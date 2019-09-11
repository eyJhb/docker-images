#!/usr/bin/env bash
docker run --rm -it \
    --net=host \
    --env="DISPLAY=:0" \
    -v $HOME:/src \
    -v $HOME/.Xauthority:/root/.Xauthority:rw \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    icedtea-trust bash
