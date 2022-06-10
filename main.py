from fastapi import FastAPI
from user.controller import router as user

app = FastAPI()

app.include_router(user)
