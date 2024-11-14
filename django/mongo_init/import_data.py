import kagglehub
from pymongo import MongoClient
import json
from os import listdir
from os.path import isfile, join
import os
import csv
# Download latest version
path = kagglehub.dataset_download("lepchenkov/usedcarscatalog")

print("Path to dataset files:", path)

onlyfiles = [f for f in listdir(path) if isfile(join(path, f))]
ds_file = onlyfiles[0] 
print(ds_file)
mongo_host = os.environ.get("MONGO_DB_HOST", "localhost")
mongo_port = os.environ.get("MONGO_DB_PORT", "27017")
mongo_db_user = os.environ.get("MONGO_DB_USERNAME")
mongo_db_pw = os.environ.get("MONGO_DB_PASSWORD")
mongo_db_name = os.environ.get("MONGO_DB_NAME")


db_url = f"mongodb://{mongo_db_user}:{mongo_db_pw}@{mongo_host}:{mongo_port}/\
{mongo_db_name}?authSource=admin"
# MongoDB connection
client = MongoClient(db_url)
db = client['usedcarscatalog']
collection = db['usedcarscatalog']

# CSV file path
csv_file_path = os.path.join(path,ds_file)
count=0
with open(csv_file_path, mode='r') as csvfile:
    reader = csv.DictReader(csvfile)
    buffer = []
    for row in reader:
        count+=1
        buffer.append(row)
        if count % 500 ==0:
            collection.insert_many(buffer)
            buffer = []
    collection.insert_many(buffer)

    print(f"Import done {count} rows inserted ")
