#!/usr/bin/env bash
# Use Minikube's Docker Daemon
# Prefix all variables with `MINIKUBE_`
eval $(minikube docker-env | sed 's/export /export MINIKUBE_/g')

echo "Setting the following environment variables:"
minikube docker-env | sed 's/export /export MINIKUBE_/g'

# Start buildkite image.
docker-compose -f docker-compose.buildkite.yml $@
