from core.db_connection import database

class Stat:
    database = database

    def __init__(self):
        """not using."""

    def index():
        with database.cursor() as cursor:
            
            sql = "SELECT * FROM statistics"
            cursor.execute(sql)
            result = cursor.fetchall()
            return result

    def win_game(username):
        with database.cursor() as cursor:
            
            sql = f"select * FROM statistics where username = '{username}'"
            cursor.execute(sql)
            result = cursor.fetchone()
            if(result):
                sql = f"UPDATE trivial.statistics set played_games = played_games + 1, won_games = won_games + 1 where username = '{username}' "
            else:
                sql = f"INSERT INTO statistics(won_games,defeat_games,played_games,username) VALUES('1','0','1','{username}')"
            
            cursor.execute(sql)
            database.commit()

    def find(username):
        with database.cursor() as cursor:
            
            sql = f"select * FROM statistics where username = '{username}'"
            cursor.execute(sql)
            result = cursor.fetchone()
            return result
