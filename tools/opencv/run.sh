#!/usr/bin/env bash
docker run --rm -it \
    --net=host \
    --env="DISPLAY=:0" \
    -v $HOME/go:/go \
    -v $HOME/.Xauthority:/root/.Xauthority:rw \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    opencv bash
