from core.db_connection import database

class Answer:
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
            sql = "SELECT * FROM trivial.answer"
            cursor.execute(sql)
            result = cursor.fetchall()
            return result

    def show_by_question(number_question):
        with database.cursor() as cursor:
            # Read a single record
            sql = f"SELECT * FROM trivial.answer where number_question = '{number_question}'"
            cursor.execute(sql)
            result = cursor.fetchall()
            return result != None