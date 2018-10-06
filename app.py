from bottle import *
import urllib.request, json

with urllib.request.urlopen("https://apis/petrol") as url:
    data = json.loads(url.read().decode())

@route('/')
def index():
    return template('index.tpl', data = data)

bottle.debug(True)

bottle.run(host='0.0.0.0', port=argv[1])
