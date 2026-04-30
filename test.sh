#!/bin/bash

VALID_ENV=("sit" "dev" "prod")
if [ $# -eq 0 ]; then
  echo "no argument has been provided"
exit 1
fi

arg=$1
if [[ $arg =~ ^[1-9]+$ ]]; then
  echo "argument should not be numeric"
exit 1
fi

if [[ " {$VALID_ENV[@]} " =~ " {$arg} " ]]; then
echo "valid enviornment"
ls -ltr
else
  echo "invalid enviornment"
fi

for env in "${VALID_ENV[@]}}"; do
  echo "$env"
  done