#!/usr/bin/env bash
echo "Installing package locally."
pip3 install ./app

echo "Starting flask server."
flask run
