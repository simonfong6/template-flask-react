#!/usr/bin/env bash
docker-compose \
  -f docker-compose.base.yml \
  -f docker-compose.dev-common.yml \
  -f docker-compose.development.yml \
  -p ${PWD##*/}_dev \
  $1