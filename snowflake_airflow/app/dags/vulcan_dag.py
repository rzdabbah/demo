from snowflake.snowpark import Session
from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from airflow.decorators import dag
from snowflake.snowpark.functions import col
from snowflake.snowpark.functions import parse_json
from snowflake.snowpark.functions import udf, call_udf
from snowflake.snowpark.types import StringType
import json

from  app import utils

snowpark_session = utils.create_snowpark_session()


def flatten_data_column_func(sync_id, **context):
    query = f" select *  from RAW_DATA, lateral flatten(input => parse_json(data)) WHERE sync_id='{sync_id}'  "
    asset = snowpark_session.sql(query)
    flated_table_name = 'RAMID_TBL'
    asset.write.mode("overwrite")\
        .save_as_table(flated_table_name, table_type='temporary')
    context['task_instance'].xcom_push('flated_table_name', 
                                       flated_table_name , 
                                       context['execution_date'])

#  entity_type - `if json structure has connection_id then entity_type=vulnerability else entity_type=asset`
@udf(name='set_entity_type_udf',
      input_types=[StringType()], 
      return_type=StringType(), 
      is_permanent=False, replace=True)
def set_entity_type(data: str)-> str:
    data_json = json.loads(data)[0]
    return 'vulnerability' if 'connection_id' in data_json else 'asset'


# `if asset then hash(asset_id +  asset_name)`, `if vulnerability then hash(name)`
@udf(name='set_unique_id_udf',
      input_types=[StringType(),StringType()], 
      return_type=StringType(), 
      is_permanent=False, replace=True)
def set_unique_id(entity_type: str, data: str)-> str:
    data_json = json.loads(data)[0]
    import hashlib
    if entity_type == 'asset':
        asset_id = data_json.get('asset_id','')
        asset_name = data_json.get('asset_name','')
        temp = asset_id + asset_name
        return hashlib.sha1(temp.encode("utf-8")).hexdigest()
    if entity_type == 'vulnerability':
        name = data_json.get('name','')
        return hashlib.sha1(name).hexdigest()
    return None


#asset_type - `if asset then take asset_type`, `if vulnerability then take asset_category`
@udf(name='set_asset_type_udf',
      input_types=[StringType(),StringType()], 
      return_type=StringType(), 
      is_permanent=False, replace=True)
def set_asset_type(entity_type: str, data: str) -> str:
    data_json = json.loads(data)[0]

    if entity_type == 'asset':
        return data_json.get('asset_type')
    if entity_type == 'vulnerability':
        return  data_json.get('asset_category')
    return None
    


def enrich_flated_data_func(**context):
    
    flated_table_name = context['task_instance']\
        .xcom_pull(task_ids='flatten_data_column', key='flated_table_name') 

    enriched_table_name = f"{flated_table_name}_enriched"
    flated_df = snowpark_session.table(flated_table_name)
    enriched_df = flated_df\
        .with_column('entity_type', call_udf('set_entity_type_udf',col('data')))
    enriched_df = enriched_df\
        .with_column('unique_id', call_udf('set_unique_id_udf', col('entity_type'),col('data')))
    enriched_df = enriched_df\
        .with_column('asset_type', call_udf('set_asset_type_udf', col('entity_type'),col('data')))
    
    enriched_df.write.mode("overwrite")\
        .save_as_table(enriched_table_name, table_type="temporary")
    context['task_instance'].xcom_push('enriched_table_name', 
                                       enriched_table_name , 
                                       context['execution_date'])

# 
@udf(name='set_from_the_origin_json',
      input_types=[StringType(),StringType(),StringType()], 
      return_type=StringType(), 
      is_permanent=False, replace=True)
def set_from_the_origin_json(data: str , asset_type: str , entity_type: str ) -> dict:
    data_json = json.loads(data)[0]
    name = data_json.get('name','')
    os = data_json.get('os','')
    os_version = data_json.get('os_version','')
    if entity_type.lower == 'vulnerability':
        solution_json= json.loads(data_json.get('solution','{}'))
        solution = solution_json.get('description','')
        return {
         "cve": f"{ name }",
         "description": data_json.get('description',''),
         "score": data_json.get('score',''),
         "solution": solution,
         "affected_pacakge": f"{data_json.get('package','')   }:{data_json.get('pacakge_version','')}"
        }

    if asset_type.lower() == 'host':
        return {
         "host": name,
         "host_names": data_json.get('hostnames') +  data_json.get('fqdns'),
         "ip_addresses": data_json.get('hostnames') + data_json.get('private_ip_addresses') ,
         "operation_system": f"{ os}:{ os_version }"
        }
    if asset_type.lower() == 'image':
        return {
         "repository": f"{ name.split('/')[0] }",
         "image_name": f"{ name.split('/')[1] }",
         "digest": "sha256",
         "operation_system": f"{ os }:{os_version }"
        }
    return {}

def create_final_schema_func(**context):
    enriched_table_name = context['task_instance']\
        .xcom_pull(task_ids='enrich_flated_data', key='enriched_table_name') 
    final_df_table_name = enriched_table_name.replace('enriched','final')
    #     - Drop duplicates by the `unique_id` + `sync_id` you've created

    enriched_df = snowpark_session.table(enriched_table_name)
    final_df = enriched_df.drop_duplicates('unique_id','sync_id')
    final_df = final_df.with_column('from_the_origin_json',call_udf('set_from_the_origin_json',col('data'), col('ASSET_TYPE'),col('entity_type')))
    final_df.write.mode("overwrite")\
        .save_as_table(final_df_table_name, table_type="transient")


with DAG("vulcan_dag", start_date=datetime(2024, 10 ,20), schedule_interval=None, catchup=False) as dag:
    flatten_data_column = PythonOperator(
        task_id='flatten_data_column',
        provide_context=True,
        python_callable=flatten_data_column_func,
        op_kwargs={'sync_id': '97743162-e51f-48e8-ad52-51ff73330da0'},
        dag=dag)

    enrich_flated_data = PythonOperator(
        task_id='enrich_flated_data',
        provide_context=True,
        python_callable=enrich_flated_data_func,
        dag=dag)
    final_data_schema = PythonOperator(
        task_id='final_data_schema',
        provide_context=True,
        python_callable=create_final_schema_func,
        dag=dag)

flatten_data_column >> enrich_flated_data >> final_data_schema