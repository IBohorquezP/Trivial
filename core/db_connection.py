import pymysql.cursors

from dotenv import dotenv_values

credentials = dotenv_values()
# Connect to the database
database = pymysql.connect(
    host=credentials["DB_HOST"],
    user=credentials["DB_USER"],
    password=credentials["DB_PASSWORD"],
    database=credentials["DB_NAME"],
    cursorclass=pymysql.cursors.DictCursor
)