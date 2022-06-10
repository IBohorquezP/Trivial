from fastapi import APIRouter
from .model import User

router = APIRouter(
    prefix="/user",
    tags=["user"],
    responses={404: {"description": "Not found"}},
)


@router.get("/")
async def read_items():
    return User.index()