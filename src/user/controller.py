from fastapi.responses import HTMLResponse
from fastapi import APIRouter, Form, Request
from src.answer.model import Answer
from src.question.model import Question

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

@router.get("/{id}")
async def read_user(id: str):
    return User.show(id)

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
        character = User.find_character(username)
        if(character):
            question = Question.random()
            answers = Answer.show_by_question(question["number_question"])
            return templates.TemplateResponse("gameboard.html", {
                "request": request,
                "character": character,
                "question": question,
                "answers": answers,
                "username": username,
            })
        return templates.TemplateResponse("character.html",{
            "request": request,
            "characters": Character.index(), 
            "username": username
        })
    if(User.show(username)==None):
        return templates.TemplateResponse("login.html", {
            "request": request,
            "username": username,
            "password": password,
            "failed_verify_password": False,
            "user_does_not_exist": True,
            "failed_login": is_authenticated
            
        })    
    if(User.show_password(username,password)==None):
            return templates.TemplateResponse("login.html", {
                "request": request,
                "username": username,
                "password": password,
                "failed_verify_password": True,
                "user_does_not_exist": False,
                "failed_login": is_authenticated
            })    
    else:
        return templates.TemplateResponse("login.html", {
            "request": request,
            "username": username,
            "password": password,
            "user_does_not_exist": False,
            "failed_login": is_authenticated
        })

 
@router.post("/register",  response_class=HTMLResponse)
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