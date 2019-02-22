# Android - Reverse Engineering Container!
This is a basic container which has all the basic scripts to get going, when reverse engineering Android Applications!

## Included stuff!

- Android ADB (adb tool)
    - shell
    - logcat
    - add/remove apps
- Custom script for signing and aligning!
    - sign.sh
- apktool
    - decompile and compile apks
- dex2jar
    - various tools for converting dex files (apks) to jars
    - makes them much more readable!
- procyon
    - decompiles `.jar` to a bunch of `.java` files!

### Complete list of tools

```
# Android ADB
adb
fastboot
# apktool
apktool
# dex2jar
d2j-baksmali.sh
d2j-dex-recompute-checksum.sh
d2j-dex2jar.sh
d2j-dex2smali.sh
d2j-jar2dex.sh
d2j-jar2jasmin.sh
d2j-jasmin2jar.sh
d2j-smali.sh
d2j-std-apk.sh
d2j_invoke.sh
# procyon
procyon
# custom stuff
sign.sh <mobilepay/dists/mobilepay.apk>
```

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
- Add gplaycli for downloading apks
