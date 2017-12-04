import json
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello World!"

@app.route('/hello/<name>')
def hello_name(name):
    return json.dumps({"hello": name}), {"content-type": "application/json"}
