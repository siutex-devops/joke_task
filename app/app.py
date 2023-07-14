from flask import Flask, jsonify
from bs4 import BeautifulSoup
import os
import requests


class JokeService:
    def __init__(self):
        self.base_url = 'http://bash.org.pl/latest/?page='

    def get_jokes(self):
        jokes = []
        for page in range(1, 11):  
            url = self.base_url + str(page)
            r = requests.get(url)
            soup = BeautifulSoup(r.content, 'html.parser')
            posts = soup.find_all('div', class_='quote post-content post-body')
            for post in posts:
                jokes.append(post.text.strip())
                if len(jokes) >= 100:
                    return jokes[:100]
        return jokes[:100]  


app = Flask(__name__)
joke_service = JokeService()


@app.route('/jokes', methods=['GET'])
def get_jokes():
    jokes = joke_service.get_jokes()
    return jsonify(jokes)

if __name__ == "__main__":
    app.run(host=os.getenv('HOST', '0.0.0.0'), port=os.getenv('PORT', '5000'))