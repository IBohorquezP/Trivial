from fastapi import APIRouter, Form, Request
from .model import User

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

@router.post("/login")
async def login(username: str = Form(), password: str = Form()):
    is_authenticated = User.login(username,password)
    return {"se logro el login?": is_authenticated}