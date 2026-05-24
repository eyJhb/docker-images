#!/bin/sh

/bin/echo [HEALTHCHECK]

/usr/bin/flexget -c /config/config.yml status
ret=$?
if [ $ret -ne 0 ]; then
    return 1
fi

/usr/bin/flexget -c /config/config.yml check
ret=$?
if [ $ret -ne 0 ]; then
    return 1
fi

return 0
