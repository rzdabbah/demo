FROM apache/airflow:2.7.0-python3.9

ENV PYTHONPATH=$AIRFLOW_HOME

WORKDIR $AIRFLOW_HOME

COPY requirements.txt $AIRFLOW_HOME/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt --no-cache-dir
COPY ./app/ $AIRFLOW_HOME/app/
COPY ./app/dags/ $AIRFLOW_HOME/dags/
