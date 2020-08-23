#!/usr/bin/env bash
echo "Installing package locally."
pip3 install ./app

echo "Seeding database."
python3 -m backend.database.seed

echo "Running tests."
pytest ./app/tests
