import mysql.connector

config = {
    "host": "",
    "port": "",
    "database": "",
    "user": "",
    "password": "" 
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

query = "SELECT * FROM users"
cursor.execute(query)
result = cursor.fetchall()

for row in result:
    print(row)

cursor.close()
connection.close()