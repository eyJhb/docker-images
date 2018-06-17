#!/bin/sh
/bin/echo [HEALTHCHECK]

/bin/echo -e "GET / HTTP/1.1\n\n" | nc 127.0.0.1 9981 | grep 'HTS/tvheadend'
ret=$?
if [ $ret -ne 0 ]; then
    return 1
fi

/bin/echo -e empty | nc 127.0.0.1 9982
ret=$?
if [ $ret -ne 0 ]; then
    return 1
fi

return 0
