from flask import Flask, jsonify, request 

app = Flask(__name__) 

  

@app.route('/hello', methods=['GET']) 

def helloworld(): 

    if(request.method == 'GET'): 

        data = {
    "monday": ["19z213", "19z202", "19G001", "19z203", "19z211", "19z201", "19z205", "19z204"],
    "tuesday":["19z205", "19z204", "19z202", "19G001", "19z213", "19z201", "19z203", "19z211"],
    "wednesday":["19z204", "19G001", "19z203", "19z211", "19z202", "19z201", "19z213", "19z205"],
    "thursday":["19z201", "19z211", "19z203", "19z213", "19z204", "19G001", "19z202", "19z205"],
    "friday":["19z205", "19z213", "19z204", "19z201", "19z202", "19z211", "19z203", "19G001"]
    }

        return jsonify(data) 

  

if __name__ == '__main__': 

    app.run(debug=True)