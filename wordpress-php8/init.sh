#!/bin/bash
#Install a docker container with wordpress 7.4 and mysql (latest)

FILE=.env

ERROR="\033[1;31mError: \033[0m"
if [ -f "$FILE" ]; then
    docker compose down
    docker compose up -d --force-recreate
else 
    echo "${ERROR}Cannot find $FILE file"
fi

