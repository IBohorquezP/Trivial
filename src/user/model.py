from core.db_connection import database

class User:
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
            sql = "SELECT * FROM user"
            cursor.execute(sql)
            result = cursor.fetchall()
            return result

    def login(username, password):
        with database.cursor() as cursor:
            # Read a single record
            sql = f"SELECT * FROM user where username like '{username}' and password like '{password}'"
            cursor.execute(sql)
            result = cursor.fetchone()
            return result != None

    def register_user(username, password):
        with database.cursor() as cursor:
            # Read a single record
            sql = f"INSERT INTO user(username,password,type) VALUES('{username}','{password}','player')"
            cursor.execute(sql)
            database.commit()
