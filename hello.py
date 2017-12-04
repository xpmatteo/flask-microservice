import json
import time
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    time.sleep(2)
    return "Hello World!"

@app.route('/hello/<name>')
def hello_name(name):
    return json.dumps({"hello": name}), 200, {"content-type": "application/json"}
