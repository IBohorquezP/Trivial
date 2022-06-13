from http.client import HTTPResponse
from fastapi import APIRouter, Form, Request
from .model import User
from core.front import templates

router = APIRouter(
    prefix="/user",
    tags=["user"],
    responses={404: {"description": "Not found"}},
)

@router.get("/")
async def index_users():
    return User.index()

# @router.get("/{id}")
# async def read_user(id: str):
#     return User.show(id)

# @router.post("/")
# async def create_user(params):
#     return User.store(params)

# @router.put("/{id}")
# async def update_user(id, params):
#     return User.update(id, params)

# @router.delete("/{id}")
# async def delete_user(id):
#     return User.delete(id)

@router.post("/login",  response_class=HTTPResponse)
async def login(request: Request, username: str = Form(), password: str = Form()):
    is_authenticated = User.login(username,password)
    if (is_authenticated):
        return templates.TemplateResponse("character.html", {"request": request, "id": 1})
    return templates.TemplateResponse("login.html", {
        "request": request,
        "username": username,
        "password": password,
        "failed_login": is_authenticated
    })
