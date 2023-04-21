from flask import Flask
from flask import send_file
from flask import render_template
from flask import request
import os

app = Flask(__name__)

# Main
@app.route('/')
def test():
    path = "static/users/"
    userlist = os.listdir(path)
    userlist = [i for i in userlist]
    return render_template("main.html", userlist=userlist)


# Create userpage
@app.route('/<username>/')
def userpage(username):
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
 #   return render_template('userpage.html', name=name, link=link, age=age, location=location)

# Create usergallery
@app.route("/<username>/gallery/")
def usergallery(username):
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
    return render_template("usergallery.html", imagelist=IMG_LIST, name=name)



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

@app.route('/tester')
def tester():
    return render_template('tester.html')
    firstName = request.form['first_name']
    print(firstName)

@app.route('/hello', methods=['POST'])
def hello():
    first_name = request.form['first_name']
    last_name = request.form['last_name']
    return 'Hello %s %s have fun learning python <br/> <a href="/">Back Home</a>' % (first_name, last_name)
    print('first_name')



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



