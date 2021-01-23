#!/bin/bash

FB_NAME=$1
#FB_PATH=${HOME}/docker/firebird
#
#docker run -d \
#    --name ${FB_NAME} \
#    -v ${FB_PATH}/volume/:/firebird/ \
#    ${FB_NAME}:2.5-ss
#    -e FIREBIRD_USER=SYSDBA \
#    -e FIREBIRD_PASSWORD=masterkey \
#
#sleep 120
#
# TODO WIP Automatic show generated password
#clear
#docker logs ${FB_NAME}

docker exec -it ${FB_NAME} /bin/bash
