from flask import Flask
from flask import send_file
from flask import render_template
app = Flask(__name__)

#importing sqlite3 and connecting to database

import sqlite3
connection = sqlite3.connect("girls.db")
cursor = connection.cursor()

selection = cursor.execute("SELECT name, link, age, location from girls WHERE ID = 1")
for row in selection:
   name = (row[0])
   link = (row[1])
   age = (row[2])
   location = (row[3])



@app.route('/gallery')
def gallery():
   return render_template('Gallery.html', name=name, link=link, age=age, location=location)

#closing db connection
connection.close()




#flask closing statement
if __name__ == '__main__':
   app.run(debug = True)



