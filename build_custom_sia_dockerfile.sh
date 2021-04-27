#!/bin/bash
docker build -f docker-sia/dev/Dockerfile docker-sia/ -t sia:1.4.7-dev-custom
# NOTES: Needed to change the go architecture to arm to get rid of exec error while compiling
