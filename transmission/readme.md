# Transmission
Simple container for [Transmission](https://transmissionbt.com/).

```
  transmission:
    container_name: transmission
    image: eyjhb/transmission
    restart: always
    volumes:
      - ${USERDIR}/docker/transmission/config:/config
      - ${USERDIR}/docker/transmission/downloads:/downloads
      - ${USERDIR}/docker/transmission/watch:/watch
      - /media:/media
    ports:
      - "9091:9091"
      - "51413:51413"
      - "51413:51413/udp"
    environment:
      - PUID=${PUID}
      - PGID=${PGID}
      - TZ=${TZ}
```
