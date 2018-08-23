# Tvheadend
Simple container for [Tvheadend](https://tvheadend.org/).

```
  tvheadend:
    container_name: tvheadend
    image: eyjhb/tvheadend
    restart: always
    volumes:
      - ${USERDIR}/docker/tvheadend/config/:/config/
      - ${USERDIR}/docker/tvheadend/data/:/data/
    ports:
      - "9981:9981"
      - "9982:9982"
    environment:
      - PUID=${PUID}
      - PGID=${PGID}
      - TZ=${TZ}
```
