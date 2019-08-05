#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# This script will spawn a child bash shell, inject vars from envi and run the command

set -e
#set -x # Uncomment to print which command is running

for file in $DIR/envis/*.json; do
    # https://stackoverflow.com/questions/48512914/exporting-json-to-environment-variables
    for s in $(jq -r "to_entries|map(\"\(.key)=\(.value|tostring)\")|.[]" $file); do
            export $s
    done
done

if [ $# -eq 0 ]
  then
    eval "env | grep -i ENVI_ENABLED"
    exit
fi

eval "$@"