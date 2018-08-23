# Python Rotate Backups
Simple container for [python-rotate-backups](https://github.com/xolox/python-rotate-backups).

```
  rotate-backups:
    container_name: rotate-backups
    image: eyjhb/backup-rotate
    restart: always
    volumes:
      - /media:/media
      - ${USERDIR}/docker/rotate-backups/config:/config
    environment:
      - PUID=${PUID}
      - PGID=${PGID}
      - TZ=${TZ}
```
