# Platform Data Engineer Assignment


## Dockerized Airflow

Open terminal in the pycharm and run:
* ``` docker build -t de-assignment:latest . ```
* ``` docker compose up ```
* Airflow
  * http://localhost:8080/home
  * username: airflow
  * password: airflow


## Assignment
In table ``` RAW_DATA ``` you have a sample of the data (files) we are getting from out customers connectors.

In these files we have two types of entities: Assets and Vulnerabilities

Data sample:
- Asset
```json
{
  "asset_type": "host",
  "asset_id": "af46363b-e968-5196-87ed-2cbee7aaa49f",
  "asset_name": "correlations0",
  ...
}
```
- Vulnerability
```json
{
  "asset_category": "host",
  "connection_id": "a222e6a5-c6a6-5135-9d74-329e28276afb",
  "name": "CVE-2001-1579",
  ...
}
```

- Write a DAG that will do the following steps (write each step result into a new table):
- receive a `sync_id` parameter and pass it to the first step
  - First step - flatten
    - Filter data with the given `sync_id` 
    - Flatten each file into raw entities by column `data` (List of dictionaries).
    - Save the result into a table
  - Second step - Enrichment
    - Read the table from the previous step 
    - Register and use UDF to enrich the data with `unique_id`, `entity_type` and `asset_type` columns
      - entity_type - `if json structure has connection_id then entity_type=vulnerability else entity_type=asset`
      - unique_id - `if asset then hash(asset_id +  asset_name)`, `if vulnerability then hash(name)`
      - asset_type - `if asset then take asset_type`, `if vulnerability then take asset_category`
  - Third step - Create Final Schema
    - Drop duplicates by the `unique_id` + `sync_id` you've created
    - Register and use UDF to convert the `data` column to a different variant column by the next logic (`{{ from_the_origin_json }}`) 
      - Asset<>Host 
        ```json
        {
         "host": "{{ name }}",
         "host_names": "{{ hostnames + fqdns }}",
         "ip_addresses": "{{ public_ip_addresses + private_ip_addresses }}",
         "operation_system": "{{ os }}:{{ os_version }}"
        }
        ```
      - Asset<>Image
        ```json
        {
         "repository": "{{ name.split('/')[0] }}",
         "image_name": "{{ name.split('/')[1] }}",
         "digest": "{{ sha256 }}",
         "operation_system": "{{ os }}:{{ os_version }}"
        }
        ```
      - Vulnerability<>Host/Image
        ```json
        {
         "cve": "{{ name }}",
         "description": "{{ description }}",
         "score": "{{ score }}",
         "solution": "{{ solution['description'] }}",
         "affected_pacakge": "{{ package }}:{{ pacakge_version }}"
        }
        ```
