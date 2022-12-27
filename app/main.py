from flask import Flask
import os

app = Flask(__name__)


@app.route('/', methods=['POST', 'GET'])
def home():
    return "I am just testing and it works!!!!"


if __name__ == "__main__":
    port = int(os.environ.get('PORT', 8000))
    app.run(debug=True, host='0.0.0.0', port=port)