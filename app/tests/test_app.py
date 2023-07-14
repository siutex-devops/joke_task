import unittest
from app import JokeService

class TestJokeServicer(unittest.TestCase):
    def test_fetch_jokes(self):
        joke_service = JokeService()
        self.assertIsInstance(joke_service.get_jokes(), list)
        self.assertTrue(len(joke_service.get_jokes()) > 0)

if __name__ == '__main__':
    unittest.main()