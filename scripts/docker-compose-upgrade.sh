#!/usr/bin/env bash
echo "Upgrading compose."
path=$(pwd)
echo "Path: $path"
rm $(which docker-compose)
curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

export MONGO_HOST="mongo"
export MONGO_USERNAME="root"
export MONGO_PASSWORD="example"

echo "Running tests."
./scripts/test.sh
