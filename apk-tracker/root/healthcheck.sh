#!/bin/sh

/bin/echo [HEALTHCHECK]

/usr/bin/gplaycli -c /config/gplaycli.conf -v
ret=$?
if [ $ret -ne 0 ]; then
    return 1
fi

return 0
