from core.db_connection import database

class Character:
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
            sql = "SELECT * FROM trivial.character"
            cursor.execute(sql)
            result = cursor.fetchall()
            return result
    
    def show(id_character):
         with database.cursor() as cursor:
            sql = f"SELECT * FROM trivial.character where id_character = '{id_character}' "
            cursor.execute(sql)
            result = cursor.fetchone()
            return result
    