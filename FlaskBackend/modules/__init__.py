import os
import importlib
from flask import Flask
from modules.backed import routes
app = Flask(__name__)

print("model loading .... plaese wait this might take a while")
os.path.join(os.path.dirname("routes.py"), "backed")

app.secret_key = '1234'

app.register_blueprint(routes.mod)
