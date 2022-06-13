from fastapi import APIRouter
from .model import Character

router = APIRouter(
    prefix="/character",
    tags=["character"],
    responses={404: {"description": "Not found"}},
)

@router.get("/")
async def index_characters():
    return Character.index()

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
