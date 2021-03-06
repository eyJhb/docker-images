#!/bin/bash

DOCKER_USER="eyjhb"
DOCKER_NAME="transmission"

# get versions
VERSION="$(awk '$2 == "VERSION" { print $3; exit }' Dockerfile)"
APP_VERSION="$(awk '$2 == "APP_VERSION" { print $3; exit }' Dockerfile)"

# build the image
docker build -t $DOCKER_USER/$DOCKER_NAME:latest .
docker build -t $DOCKER_USER/$DOCKER_NAME:$APP_VERSION-$VERSION .

# push the images
docker push $DOCKER_USER/$DOCKER_NAME:latest
docker push $DOCKER_USER/$DOCKER_NAME:$APP_VERSION-$VERSION
