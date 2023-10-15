#!/bin/sh

docker container rm scripts_waterquality_database_1
docker volume rm scripts_waterquality_volume
docker container rm scripts_waterquality_web_1
docker image rm hylkevds/frost-http-waterquality
