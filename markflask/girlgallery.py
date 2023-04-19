from flask import Flask
from flask import send_file
from flask import render_template
from flask import request
import os

app = Flask(__name__)

#importing sqlite3 and connecting to database

#import sqlite3
#connection = sqlite3.connect("girls.db")
#cursor = connection.cursor()

@app.route('/<username>')
def gallery(username):
    import sqlite3
    connection = sqlite3.connect("girls.db")
    cursor = connection.cursor()
    selection = cursor.execute("SELECT name, link, age, location from girls WHERE name = ? ", [username])
    for row in selection:
        name = (row[0])
        link = (row[1])
        age = (row[2])
        location = (row[3])
    #closing db connection
    connection.close()
    return render_template('Gallery.html', name=name, link=link, age=age, location=location)



@app.route('/form')
def form():
    return render_template('Form.html')
 
@app.route('/data/', methods = ['POST', 'GET'])
def data():
    if request.method == 'GET':
        return f"The URL /data is accessed directly. Try going to '/form' to submit form"
    if request.method == 'POST':
        form_data = request.form
        return render_template('Data.html',form_data = form_data)
        for key, value in form_data.items():
         var1 = key
         var2 = value


@app.route("/<username>/gallery/")
def Display_IMG(username):
    import sqlite3
    connection = sqlite3.connect("girls.db")
    cursor = connection.cursor()
    selection = cursor.execute("SELECT name, link, age, location from girls WHERE name = ? ", [username])
    for row in selection:
        name = (row[0])
        link = (row[1])
        age = (row[2])
        location = (row[3])
    #closing db connection
    connection.close()
    IMG_LIST = os.listdir('static/users/' + name + '/')
    IMG_LIST = ['/users/' + name + '/' + i for i in IMG_LIST]
    return render_template("Full.html", imagelist=IMG_LIST)


#@app.route("/")
#def Display_IMG():
#    IMG_LIST = os.listdir('static/users/Gina/')
#    IMG_LIST = ['/users/Gina/' + i for i in IMG_LIST]
#    return render_template("Full.html", imagelist=IMG_LIST)


#closing db connection
#connection.close()




#flask closing statement
if __name__ == '__main__':
   app.run(debug = True)



