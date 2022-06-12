<<<<<<< HEAD
import os
import mysql.connector
=======
import pymysql.cursors
>>>>>>> c21a4ca8de2607e9ed5fd4b8f7e032212c0af885

from dotenv import dotenv_values

<<<<<<< HEAD
load_dotenv(Path("../.env"))

credentials = { 
    "host": os.getenv("DB_HOST"),
    "user": os.getenv("DB_USER"),
    "password": os.getenv("DB_PASSWORD"),
    "database": os.getenv("DB_NAME")
}

# Connect to the database
database = mysql.connector.connect(
    host=credentials["host"],
    user=credentials["user"],
    password=credentials["password"],
    database=credentials["database"],
=======
credentials = dotenv_values()

# Connect to the database
database = pymysql.connect(
    host=credentials["DB_HOST"],
    user=credentials["DB_USER"],
    password=credentials["DB_PASSWORD"],
    database=credentials["DB_NAME"],
    cursorclass=pymysql.cursors.DictCursor
>>>>>>> c21a4ca8de2607e9ed5fd4b8f7e032212c0af885
)