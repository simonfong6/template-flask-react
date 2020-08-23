#!/usr/bin/env python3
"""
Backend server.
"""
import logging
import time

from flask import Flask
from flask import send_from_directory


# Configure logging.
logging.basicConfig(filename='app/server.log')
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)


app = Flask(
    __name__,
    static_folder='/code/frontend/frontend/build',  # Serve the React files.
    static_url_path='/'
)

# Allow fetching root serves index file.
@app.route('/')
def index():
    return app.send_static_file('index.html')

@app.route('/time')
def get_current_time():
    return {'time': time.time()}
