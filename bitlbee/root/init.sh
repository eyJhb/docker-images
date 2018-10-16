#!/bin/sh
# make dir, and symlink `/config` -> `/etc/bitlbee`
echo "[BITLBEE] Initial setup"

if [ "$(ls -A /config)" ]; then
    echo "[BITLBEE] Reusing config"
    rm -rf /etc/bitlbee
else
    echo "[BITLBEE] No config, copying default"
    mv /etc/bitlbee/* /config/
    rmdir /etc/bitlbee
fi

ln -s /config /etc/bitlbee

echo "[BITLBEE] Starting process"
# start bitlbee
bitlbee -F -n -p $BITLBEEPORT
