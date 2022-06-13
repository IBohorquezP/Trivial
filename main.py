from fastapi import FastAPI, Request
from fastapi.responses import HTMLResponse
from src.user.controller import router as user
from fastapi.staticfiles import StaticFiles
from core.front import templates

app = FastAPI()

app.mount("/css", StaticFiles(directory="static/css"), name="css")
app.mount("/js", StaticFiles(directory="static/js"), name="js")
app.mount("/img", StaticFiles(directory="static/img"), name="img")


app.include_router(user)

@app.get("/", response_class=HTMLResponse)
async def read_item(request: Request):
    return templates.TemplateResponse("login.html", {"request": request, "id": 1})

@app.get("/character", response_class=HTMLResponse)
async def read_item(request: Request):
    return templates.TemplateResponse("character.html", {"request": request, "id": 1})

@app.get("/statistics", response_class=HTMLResponse)
async def statistics(request: Request):
    return templates.TemplateResponse("statistics.html", {"request": request, "id": 1})

