#!/usr/bin/env bash
echo "Installing package locally."
pip3 install .

echo "Seeding database."
python3 -m backend.database.seed

echo "Starting flask server."
flask run
