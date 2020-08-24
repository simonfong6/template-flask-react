#!/usr/bin/env bash
docker-compose \
  -f docker-compose.base.yml \
  -f docker-compose.dev-common.yml \
  -f docker-compose.test.yml \
  -p ${PWD##*/}_test \
  up \
    --abort-on-container-exit\
    --exit-code-from api \

code=$?

docker-compose \
  -f docker-compose.base.yml \
  -f docker-compose.dev-common.yml \
  -f docker-compose.test.yml \
  -p ${PWD##*/}_test \
  down

exit $code
