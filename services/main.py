from fastapi import FastAPI
from services.data_loder import load_data

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello FastAPI!"}

@app.get("/products")
def get_products():
    return load_data()
