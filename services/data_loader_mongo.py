import mysql
import pymongo

class DataLoder:
    @staticmethod
    def connector():
        client = pymongo.MongoClient(
            host='mongodb-community-server',
            port=27017,
            user = "shlomo",
            password = "1234",
        )
        db = client["my_mongo"]
        return db

    @staticmethod
    def load_data():
        db = DataLoder.connector()
        collection = db["cars"]
        data = list(collection.find({},{"_id":0}))
        return data
    
