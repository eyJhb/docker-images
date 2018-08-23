# RSSH
Simple container for [RSSH](http://www.pizzashack.org/rssh/).

```
  rssh:
    container_name: rssh
    image: eyjhb/rssh:2.3.4
    restart: always
    volumes:
      - /media/backup:/media/backup
      - ${USERDIR}/docker/rssh/config:/config
    ports:
      - 22:22
    environment:
      - PUID=${PUID}
      - PGID=${PGID}
      - TZ=${TZ}
```
