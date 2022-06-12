from core.db_connection import database

class Stat:
    database = database

    def __init__(self):
        """not using."""

    def index():
        with database.cursor() as cursor:
            
            sql = "SELECT * FROM stat"
            cursor.execute(sql)
            result = cursor.fetchall()
            return result