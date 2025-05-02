"""
Flask application for App 2
Serves a simple hello message on the root endpoint
"""

from flask import Flask
import socket
from datetime import datetime

app = Flask(__name__)

@app.route("/")
def hello():
    """Return a greeting message for App 2"""
    return "Hello from App 2"

@app.route("/hostname")
def get_hostname():
    """Return hostname and current time"""
    hostname = socket.gethostname()
    current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    return f"APP2 Hostname: {hostname}, Time: {current_time}"

if __name__ == "__main__":
    # Run the Flask application on all interfaces (0.0.0.0) on port 8000
    app.run(host="0.0.0.0", port=8000)