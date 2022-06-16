import random
from core.db_connection import database

class Question:
    database = database

    def __init__(self, username, password, type):
        """not using."""
        self.username = username
        self.password = password
        if type not in ["admin", "player"]:
            raise ValueError(f"invalid user type ${type}")
        self.type = type

    def index():
        with database.cursor() as cursor:
            # Read a single record
            sql = "SELECT * FROM trivial.question"
            cursor.execute(sql)
            result = cursor.fetchall()
            return result

    def random():
         with database.cursor() as cursor:
            number_question = random.randint(1,64)
            sql = f"SELECT * FROM trivial.question where number_question = {number_question} "
            cursor.execute(sql)
            result = cursor.fetchone()
            return result