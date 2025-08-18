from fastapi import FastAPI

from services.data_loader_mongo import DataLoder

app = FastAPI()
@app.get("/")
def get_root():
    return {"message":"Hello FastAPI!"}
@app.get("/cars")
def get_cars():
    db = DataLoder.load_data()
    return db