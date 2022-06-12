import os
import mysql.connector

from dotenv import load_dotenv
from pathlib import Path

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
)