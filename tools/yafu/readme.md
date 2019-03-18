# YAFU
I have used YAFU to factor big numbers, and do various mathematical ... stuff to it!
Read more about [YAFU here](https://sourceforge.net/p/yafu/wiki/Home/).

This does include `gmp-ecm` located in `/opt/ecm/ecm`, and should always be used when you run the image (as in automatically be enabled and used).
Basic usage is as follows

```
docker run --rm -it eyjhb/yafu 
docker run --rm -it eyjhb/yafu -threads 4
```

Enjoy!

# Source
- [Github](https://github.com/eyJhb/docker-images/tree/master/tools/yafu)
- [DockerHub](https://hub.docker.com/r/eyjhb/yafu/)
