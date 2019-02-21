# Android - Reverse Engineering Container!
This is a basic container which has all the basic scripts to get going, when reverse engineering Android Applications!

## Included stuff!

- Android ADB (adb tool)
    - shell
    - logcat
    - add/remove apps
- apktool
    - decompile and compile apks
- dex2jar
    - various tools for converting dex files (apks) to jars
    - makes them much more readable!

## Usage
`--privileged` is required for `adb` to connect to your android device.
Keep in mind, the Android phone needs to be plugged in BEFORE starting the container!

The volume mount for `$(pwd)/root` is for for a persistent `/root` directory, as `adb`
will create file auth files that your android phone will ask if you trust!

```
docker run --rm -it --privileged \
    -v $(pwd):/src
    -v $(pwd)/root:/root
    eyjhb:android-re
    bash
```

# Links

- [Github](https://github.com/eyJhb/docker-images/tree/master/tools/android-re)
- [Docker Hub](https://hub.docker.com/r/eyjhb/android-re)

# TODO

- Add procyon (decompile dex to .java files), sometimes better than dex2jar
    - https://bitbucket.org/mstrobel/procyon/downloads/procyon-decompiler-0.5.30.jar
- Add gplaycli for downloading apks
