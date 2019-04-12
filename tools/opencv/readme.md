# OpenCV 4.0.1 
This container comes with Go and [GoCV](https://gocv.io/) bindings plus support for Python 2.7, OpenCV 4.0.1 and Matplotlib (which should be able to display your graphs!)

To run the container, use the following run.sh 

```
#!/usr/bin/env bash
docker run --rm -it \
    --net=host \
    --env="DISPLAY=:0" \
    -v $HOME/go:/go \
    -v $HOME/.Xauthority:/root/.Xauthority:rw \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    eyjhb/opencv:latest bash
```

# Links

- [Github](https://github.com/eyJhb/docker-images/tree/master/tools/opencv)
- [Docker Hub](https://hub.docker.com/r/eyjhb/opencv)
