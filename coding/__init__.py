from flask import Flask

app=Flask(__name__)
app.debug=True
#app.host='0.0.0.0'
from coding import routes