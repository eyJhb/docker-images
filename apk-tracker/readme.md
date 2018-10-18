# APK Tracker
This docker image, is made with the purpose of having various verions of APK files.
It reads the APKs you want from a list `/config/apks.txt`, and then outputs them into `/data`.

It has a default config file, which is located in `/config/gplaycli.conf`.

```
docker run --rm -it -v $(pwd)/config:/config -v $(pwd)/data:/data eyjhb/apk-tracker
```

`/config/apks.txt`

```
dk.danskebank.android.tribank
com.eboks.activities
```
