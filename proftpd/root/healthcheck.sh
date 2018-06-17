#!/bin/sh

/bin/echo [HEALTHCHECK]
nc -vz 127.0.0.1 21 
return $?
