# Fatso - The Unhealthy Container!
This is a simple Docker container, which only goal is to be unhealthy when you specify it!
The reason for the name fatso, is basically that some might just use something like ...

```
if "unhealthy" in docker_ps_output:
    # do unhelahty container action here
```

Which would be unfortunate.
Therefore fatso has come into place, as the unhealthy container!

Fatso has two environment variables, that determine when it should be unhealthy and when it should start being healthy again!
These are variables for `crond`, so it will run a script when it needs to be healthy and another when is needs to be healthy again.

`docker-compose.yml`
```
  fatso:
    container_name: fatso
    image: eyjhb/fatso
    restart: always
    environment:
      - TZ=${TZ}
      - UNHEALTHY_START=00 12 * * 1
      - UNHEALTHY_STOP=05 12 * * 1
```

# Links
GitHub - [https://github.com/eyJhb/docker-images/tree/master/fatso](https://github.com/eyJhb/docker-images/tree/master/fatso)

DockerHub - [https://hub.docker.com/r/eyjhb/fatso](https://hub.docker.com/r/eyjhb/fatso)
