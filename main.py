from guesslang import Guess
from flask import Flask, request

guess = Guess()
app = Flask(__name__)


@app.route('/detect_language', methods=['POST'])
def detect_language_endpoint():
    source_code = request.form['code']
    return guess.language_name(source_code) or 'Text'


if __name__ == '__main__':
    app.run()
