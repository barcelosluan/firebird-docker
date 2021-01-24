#!/bin/bash

FB_NAME=$1
FB_PATH=${HOME}/docker/firebird

sudo rm -rf ${FB_PATH}/volume/data/
sudo rm -rf ${FB_PATH}/volume/etc/
sudo rm -rf ${FB_PATH}/volume/system/
sudo rm -rf ${FB_PATH}/volume/log/
sudo rm -rf ${FB_PATH}/volume/logs/

# TODO Not working...
#docker build -t ${FB_NAME}:2.5-ss .
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
#
#docker exec -it ${FB_NAME} /bin/bash

docker run -it \
    --name ${FB_NAME} \
    -v ${FB_PATH}/volume/:/firebird/ \
    ubuntu:18.04
#    -e FIREBIRD_USER=SYSDBA \
#    -e FIREBIRD_PASSWORD=masterkey \

