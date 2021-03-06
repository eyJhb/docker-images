#!/usr/bin/env bash

DOCKER_USER="eyjhb"
DOCKER_NAME="android-re"

# get versions
VERSION="$(awk '$2 == "VERSION" { print $3; exit }' Dockerfile)"

# build the image
docker build -t $DOCKER_USER/$DOCKER_NAME:latest .
docker build -t $DOCKER_USER/$DOCKER_NAME:$VERSION .

# push the images
docker push $DOCKER_USER/$DOCKER_NAME:latest
docker push $DOCKER_USER/$DOCKER_NAME:$VERSION
