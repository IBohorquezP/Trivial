from fastapi import APIRouter
from .model import Stat

router = APIRouter(
    prefix="/stat",
    tags=["stat"],
    responses={404: {"description": "Not found"}},
)


@router.get("/")
async def read_items():
    return Stat.index()