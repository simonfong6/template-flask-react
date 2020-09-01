#!/usr/bin/env bash
docker run  \
  -e FLASK_APP=./backend/server.py  \
  -e FLASK_RUN_HOST=0.0.0.0 \
  -e MONGO_HOST \
  -e MONGO_USERNAME \
  -e MONGO_PASSWORD \
  -e MONGO_DATABASE=example_dev \
  -e FLASK_ENV=development \
  -p 5000:5000 \
  -it \
  flask:0.2
