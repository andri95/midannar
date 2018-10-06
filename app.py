from bottle import *
import urllib.request, json

with urllib.request.urlopen("https://apis/petrol") as url:
    data = json.loads(url.read().decode())

@route('/')
def index():
    return template('index', data = data)

run(debug = True)
