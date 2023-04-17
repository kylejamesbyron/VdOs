from flask import Flask
app = Flask(__name__)

#importing sqlite3 and connecting to database

import sqlite3
connection = sqlite3.connect("test.db")
cursor = connection.cursor()

username = "1"

cursor.execute("INSERT INTO users (users) values (?)", (username))

connection.commit()

@app.route('/')
def hello_world():
    return 'Hello! %s ' % username
    return 'france'


#closing db connection
connection.close()




#flask closing statement
if __name__ == '__main__':
   app.run(debug = True)



