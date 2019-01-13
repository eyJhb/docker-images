#!/usr/bin/env bash

DOCKER_USER="eyjhb"
DOCKER_NAME="bitlbee"

# get versions
VERSION="$(awk '$2 == "VERSION" { print $3; exit }' Dockerfile)"
APP_VERSION="$(awk '$2 == "BITLBEE_VERSION" { print $3; exit }' Dockerfile)"

# build the image
docker build -t $DOCKER_USER/$DOCKER_NAME:latest .
docker build -t $DOCKER_USER/$DOCKER_NAME:$APP_VERSION-$VERSION .

if [ "$1" = "push" ]; then
    echo "Pushing image to Docker Hub"
    # push the images
    docker push $DOCKER_USER/$DOCKER_NAME:latest
    docker push $DOCKER_USER/$DOCKER_NAME:$APP_VERSION-$VERSION
fi
