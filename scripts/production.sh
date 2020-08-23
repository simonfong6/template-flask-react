#!/usr/bin/env bash
docker-compose \
  -f docker-compose.base.yml \
  -f docker-compose.production.yml \
  -p ${PWD##*/}_prod \
  $1
