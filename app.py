
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
     a = 10
     b = 20
     c = a+b
     return "The Sum is "+str(c)

if __name__ == "__main__":
     app.run(debug=True, host='0.0.0.0')
