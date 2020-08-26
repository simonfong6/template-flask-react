#!/usr/bin/env bash
echo "VOLUME_PATH='$VOLUME_PATH'"

if [[ -z "$VOLUME_PATH" ]]; then
  echo "VOLUME_PATH=$VOLUME_PATH is empty, default to current directory."
  export VOLUME_PATH="."
  echo "VOLUME_PATH=$VOLUME_PATH"
fi
