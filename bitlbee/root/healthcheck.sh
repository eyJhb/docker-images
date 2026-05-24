#!/bin/sh
/bin/echo [HEALTHCHECK]

/bin/echo -e "quit\n\n" | nc 127.0.0.1 8080 | grep -i BitlBee
return $?
