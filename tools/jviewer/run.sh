#!/usr/bin/env bash
# nix-shell -p xhost --run 'xhost +local:'
# _JAVA_AWT_WM_NONREPARENTING=1 javaws jviewer.jnlp
docker run --rm -it \
    --net=host \
    --env="DISPLAY=:0" \
    -v $HOME:/src \
    -v $HOME/.Xauthority:/root/.Xauthority:rw \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    eyjhb/icedtea-trust bash
