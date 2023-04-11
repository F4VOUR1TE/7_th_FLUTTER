from modules import app
# 
# model = load_model("imagemodel.h5")
# print("model loading .... plaese wait this might take a while")
if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=80)