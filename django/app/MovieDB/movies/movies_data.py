from pymongo import MongoClient
import json
import os
from bson.json_util import dumps


class MoviesMngr():

    def __init__(self):
        self.client = None

    def getConnection(self):
        if self.client != None:
            return self.client
        mongo_host = os.environ.get("MONGO_DB_HOST", "localhost")
        mongo_port = os.environ.get("MONGO_DB_PORT", "27017")
        mongo_db_user = os.environ.get("MONGO_DB_USERNAME","")
        mongo_db_pw = os.environ.get("MONGO_DB_PASSWORD","")
        db_url = f"mongodb://{mongo_db_user}:{mongo_db_pw}@{mongo_host}:{mongo_port}/"
        # MongoDB connection  should be singletone 
        self.client = MongoClient(db_url)
        return self.client
    
    def getMoviesCollection(self):
        movies_db_name = os.environ.get("MONGO_MOVIES_DB_NAME","movies")
        movies_collection_name = os.environ.get("MONGO_MOVIES_COLLECTION_NAME","movies")
        client = self.getConnection()
        db = client[movies_db_name]
        movies_collection = db[movies_collection_name]
        return movies_collection
    
    def getAllMovies(self):
        return list(self.getMoviesCollection().find())
    
    def getMovie_by_id(self, movie_id):
        document=  self.getMoviesCollection().find({'movie_id':movie_id}).next()
        if document :
            movie_json  = json.loads(dumps(document))
            movie_json['_id'] = int(movie_json.get('movie_id'))
            return movie_json
        raise "No such movie"





    

        

