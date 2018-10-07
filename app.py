from bottle import *
import urllib.request, json

#bottle.debug(True)

with urllib.request.urlopen("https://apis.is/petrol") as url:
    data = json.loads(url.read().decode())

@route('/')
def index():
    return template('index.tpl', data = data)

@route('/bensinstodvar/<stod>')
def undirsida(stod):
    return template('undirsida.tpl', bensinstod = stod, data = data)



#bottle.run(host='0.0.0.0', port=argv[1])


run(host='localhost', port=8080)