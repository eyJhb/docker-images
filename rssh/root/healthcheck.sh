#!/bin/sh

/bin/echo [HEALTHCHECK]

/bin/echo -e "" | nc 127.0.0.1 $(cat /config/ssh/sshd_config  | grep "Port " | cut -d " " -f 2) | grep OpenSSH

return $?
