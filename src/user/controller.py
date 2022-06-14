from fastapi.responses import HTMLResponse
from fastapi import APIRouter, Form, Request

from src.character.model import Character
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

@router.post("/login",  response_class=HTMLResponse)
async def login(request: Request, username: str = Form(), password: str = Form()):
    is_authenticated = User.login(username,password)
    if (is_authenticated):
        return templates.TemplateResponse("character.html",{
            "request": request,
            "characters": Character.index(), 
            "username": username
        })
    return templates.TemplateResponse("login.html", {
        "request": request,
        "username": username,
        "password": password,
        "failed_login": is_authenticated
    })
 
@router.post("/register_user",  response_class=HTMLResponse)
async def register_user(request: Request, username: str = Form(), password: str = Form(), verify_password: str = Form()):
    if(User.show(username)):
        return templates.TemplateResponse("register.html", {
            "request": request,
            "username": username,
            "failed_verify_password": False,
            "user_exist": True
        })

    if (password != verify_password):
        return templates.TemplateResponse("register.html", {
            "request": request,
            "username": username,
            "user-exist": False,
            "failed_verify_password": True
        })

    User.register_user(username,password)
    return templates.TemplateResponse("login.html",{
        "request": request, 
        "username": username
    })