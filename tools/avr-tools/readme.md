# AVR Tools
Simple container when programming various AVR devices.

Currently is has the following packages installed:

- make
- gcc-avr
- avr-libc
- avrdude 

Running it is as simple as using the following run script (placed inside your work directory).

`run.sh`
```
#!/usr/bin/env bash
docker run --rm --privileged -it -v /dev/ttyACM0:/dev/ttyACM0 -v $(pwd):/src eyjhb/avr-tools bash
```

Keep in mind I am using `--privileged` to have access to all my resouces in `/dev`, etc. but might
not be required for you, as long as you map your programmer using `-v`.

# Source
The source for this Docker Image can be found at
[https://github.com/eyJhb/docker-images/tree/master/tools/avr-tools](https://github.com/eyJhb/docker-images/tree/master/tools/avr-tools)
