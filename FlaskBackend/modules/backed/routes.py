import os
from flask import Flask, Blueprint, request, render_template, jsonify
from modules.bottle_detection import is_bottle
from modules.backed.image_geodata import image_geo_data

mod = Blueprint('backend', __name__, template_folder='templates', static_folder='./static')


@mod.route('/')
def home():
    return render_template('index.html')


@mod.route('/predict', methods=['POST'])
def prediction():
    print(request)
    if request.method == 'POST':
        # check if the post request has the file part

        if 'file' not in request.files and 'geo' not in request.args:
            return "someting went wrong 1"
        user_file = request.files['file']
        geo_loc = request.form['geo']
        if user_file.filename == '':
            return "file name not found..."
        if user_file.filename.endswith('.jpg') or user_file.filename.endswith('.jpeg'):
            path = os.path.join(os.getcwd() + '\\modules\\static\\' + user_file.filename)
            user_file.save(path)
            if image_geo_data(geo_loc):
                identification = is_bottle.is_bottle(path)
                return jsonify({
                    "prediction": identification,
                    })
            else:
                return "wrong geo position"
        else:
            return "wrong type of file"
