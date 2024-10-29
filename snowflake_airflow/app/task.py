import snowflake.connector
from  app import utils
from  app import defaults
import pandas as pd
import json
from snowflake.snowpark.functions import col
from snowflake.snowpark.functions import parse_json
session = utils.create_snowpark_session()

def task_1 (sync_id =None):

    sync_id = '97743162-e51f-48e8-ad52-51ff73330da0'
    query = f" select data  from RAW_DATA WHERE sync_id='{sync_id}' limit 100"
    print(query)

    asset = session.sql(query)
    flaten = asset.join_table_function("flatten", parse_json(col("data")))
    flaten.write.mode("overwrite").save_as_table('ramid_temp', table_type="temporary")

    return 'done'
