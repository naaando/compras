from bs4 import BeautifulSoup
from flask import Flask, jsonify, request
from nfce import NFCeParser, NfeScrapper

app = Flask(__name__)

@app.route("/url", methods=["POST"])
def scrap():
    data = request.get_json()
    url = data.get('url', "")

    parser = NFCeParser()
    processor = NfeScrapper(parser, wait_timeout=10)

    data = processor.get(url)

    return jsonify(data.serialize())

@app.route("/html", methods=["POST"])
def parse():
    request.get_data(as_text=True)
    html = BeautifulSoup(request.data, 'html.parser')

    parser = NFCeParser()
    data = parser.parse(html)

    return jsonify(data.serialize())


if __name__ == "__main__":
    app.run(debug=True)
