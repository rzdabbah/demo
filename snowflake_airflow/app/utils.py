from snowflake.connector import connect
from snowflake.connector.connection import SnowflakeConnection
from snowflake.snowpark import Session

from app.defaults import DEFAULT_SNOWFLAKE_USER, DEFAULT_SNOWFLAKE_PASS, DEFAULT_SNOWFLAKE_ACCOUNT, \
    DEFAULT_SNOWFLAKE_WH, DEFAULT_SNOWFLAKE_DB, DEFAULT_SNOWFLAKE_ROLE, DEFAULT_SNOWFLAKE_SCHEMA


def get_connection_params():
    connection_params = {
        "account": DEFAULT_SNOWFLAKE_ACCOUNT,
        "user": DEFAULT_SNOWFLAKE_USER,
        "password": DEFAULT_SNOWFLAKE_PASS,
        "warehouse": DEFAULT_SNOWFLAKE_WH,
        "database": DEFAULT_SNOWFLAKE_DB,
        "schema": DEFAULT_SNOWFLAKE_SCHEMA,
        "role": DEFAULT_SNOWFLAKE_ROLE
    }
    return connection_params


def create_snowpark_session() -> Session:
    connection_params = get_connection_params()
    new_session = Session.builder.configs(connection_params).create()
    return new_session


def create_snowflake_session() -> SnowflakeConnection:
    connection_params = get_connection_params()
    connection = connect(**connection_params)
    return connection


    
    


