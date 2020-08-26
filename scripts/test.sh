#!/usr/bin/env bash

# Current directory of script.
# https://stackoverflow.com/questions/59895/how-to-get-the-source-directory-of-a-bash-script-from-within-the-script-itself
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source "$DIR/set-default-volume-path.sh"

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
