from fastapi import FastAPI, Request, Form
from fastapi.responses import HTMLResponse
from src.answer.model import Answer
from src.question.model import Question
from src.user.controller import router as user
from src.character.model import Character

from src.character.controller import router as character
from fastapi.staticfiles import StaticFiles
from core.front import templates
from src.stats.model import Stat

app = FastAPI()

app.mount("/css", StaticFiles(directory="static/css"), name="css")
app.mount("/js", StaticFiles(directory="static/js"), name="js")
app.mount("/img", StaticFiles(directory="static/img"), name="img")


app.include_router(user)
app.include_router(character)

@app.get("/", response_class=HTMLResponse)
async def read_item(request: Request):
    return templates.TemplateResponse("login.html", {"request": request, "id": 1})

@app.get("/character", response_class=HTMLResponse)
async def character(request: Request):
    print(Character.index())
    return templates.TemplateResponse("character.html", {"request": request, "characters": Character.index(), "id": 1})

@app.get("/statistics", response_class=HTMLResponse)
async def statistics(request: Request):
    return templates.TemplateResponse("statistics.html", {"request": request, "id": 1})

@app.get("/register", response_class=HTMLResponse)
async def register(request: Request):
    return templates.TemplateResponse("register.html", {"request": request, "id": 1})
 
@app.post("/gameboard", response_class=HTMLResponse)
def gameboard(request: Request, selected_character: str = Form(), username: str = Form(), id_answer: int = Form(), final_square: bool = Form()):
    if(id_answer != -1):
        answer = Answer.show(id_answer)
        if(answer["is_correct"] == 1):
            Character.update_position(selected_character)
            if(final_square == True):
                Stat.win_game(username)
            
    else:
        Character.update_username(username=username, id_character=selected_character)

    character = Character.show(selected_character)
    question = Question.random()
    answers = Answer.show_by_question(question["number_question"])
    return templates.TemplateResponse("gameboard.html", {
        "request": request,
        "character": character,
        "question": question,
        "answers": answers,
        "username": username,
    })

@app.post("/end_game", response_class=HTMLResponse)
def end_game(request: Request,  selected_character: str = Form()):
    Character.reset_position(selected_character)
    Character.reset_user(selected_character)
    return templates.TemplateResponse("login.html", {"request": request, "id": 1})