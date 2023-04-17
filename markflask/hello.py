from flask import Flask
app = Flask(__name__)


france = ".html"
test = 'john' + france

@app.route('/')
def hello_world():
    return 'Hello! %s ' % test
    return 'france'

if __name__ == '__main__':
   app.run(debug = True)