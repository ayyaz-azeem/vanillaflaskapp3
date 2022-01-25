from coding import app
from flask import render_template

@app.route('/')
def homepage():
#    return "Hello from flask"
    print(f"homepage function called")
    return render_template("homepage.html")