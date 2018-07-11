#!/bin/sh

/bin/echo [HEALTHCHECK]

/bin/echo -e "" | nc 127.0.0.1 22 | grep OpenSSH

return $?
