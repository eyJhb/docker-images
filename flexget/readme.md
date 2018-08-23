# FlexGet
Simple container for [FlexGet](https://flexget.com/).

```
  flexget:
    container_name: flexget
    image: eyjhb/flexget
    restart: always
    volumes:
      - ${USERDIR}/docker/flexget/config:/config
    environment:
      - PUID=${PUID}
      - PGID=${PGID}
      - TZ=${TZ}
```
