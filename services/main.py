from fastapi import FastAPI
from services.data_loder import DataLoder

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello FastAPI!"}

@app.get("/names")
def get_products():
    return DataLoder.load_data()
