"""
Flask application for App 1
Serves a simple hello message on the root endpoint
"""

from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    """Return a greeting message for App 1"""
    return "Hello from App 1"

if __name__ == "__main__":
    # Run the Flask application on all interfaces (0.0.0.0) on port 8000
    app.run(host="0.0.0.0", port=8000)