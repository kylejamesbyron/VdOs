from flask import Flask
from flask import send_file
app = Flask(__name__)

#importing sqlite3 and connecting to database

import sqlite3
connection = sqlite3.connect("test.db")
cursor = connection.cursor()

selection = cursor.execute("SELECT users, ID from users WHERE ID = 2")
for row in selection:
   username = (row[0])
   ID = (row[1])

message = ('''
User: ''' + username + '''
Test''')

   
@app.route('/%s' % username)
def hello_world():
   return '''
   <xmp>
   User: %s
   Test: %s
   Test
   </xmp>
   ''' % (username, ID)

@app.route('/')
def hello():
   return "Hello %s" % "mark"

#closing db connection
connection.close()




#flask closing statement
if __name__ == '__main__':
   app.run(debug = True)



