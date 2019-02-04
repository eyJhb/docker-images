# RTL 433
Container that runs [rtl_433](https://github.com/merbanan/rtl_433), with all the compile time requirements.

There are two ways that this can be used, running as a one time as-is or as development compiling from sources.
The first one is as development, create a `run.sh` file first.
```
#!/usr/bin/env bash
docker run --rm --privileged -it -v $(pwd):/src --entrypoint=bash eyjhb/rtl-433 bash
```

If you just want to run it as a one time container, just do the following.
```
docker run --rm --privileged -it eyjhb/rtl-433 --help
```

# Source
The source for this Docker Image can be found at
[https://github.com/eyJhb/docker-images/tree/master/tools/rtl-433](https://github.com/eyJhb/docker-images/tree/master/tools/rtl-433)
