#!/bin/sh
# make dir, and symlink `/config` -> `/etc/bitlbee`
if [ "$(ls -A /config)" ]; then
    rm -rf /etc/bitlbee
else
    mv /etc/bitlbee/* /config/
    rmdir /etc/bitlbee
fi

ln -s /config /etc/bitlbee

# start bitlbee
bitlbee -F -n -p $bitlbee_port
