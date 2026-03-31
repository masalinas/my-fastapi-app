from fastapi import FastAPI
from typing import Union

app = FastAPI(title="My Scaffolded API")

@app.get("/")
def read_root():
    return {"Hello": "World", "Status": "Active"}

@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "query": q}