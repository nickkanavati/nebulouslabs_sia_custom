#!/bin/bash

# To build run build_custom_sia_dockerfile.sh

# Modify --volume {yourStorageLocation}:/sia-data
docker run --detach --volume /mnt/ssd/sia-data:/sia-data --publish 127.0.0.1:9980:9980 --publish 9981:9981 --publish 9982:9982 --publish 9983:9983 --publish 9984:9984 --name sia-container sia:1.4.7-dev-custom
