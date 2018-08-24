# RSSH
Simple container for [RSSH](http://www.pizzashack.org/rssh/).

It creates a user `rssh`, which can be used to login and do various uploads.
By default the password for `rssh` is disabled, so a `ssh key` is required.
Place the public ssh key in `/config/authorized_keys`, and it will automatically be available to the user `rssh`.

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
