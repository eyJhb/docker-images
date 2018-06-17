#!/bin/sh

/bin/echo [HEALTHCHECK]

/usr/bin/rotate-backups --dry-run -c /config/rotate-backup.ini
return $?
