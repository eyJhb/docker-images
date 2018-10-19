#!/bin/sh
/usr/local/bin/certbot certonly \
    --agree-tos --email "${CERT_EMAIL}" -n --expand \
    -d $CERT_DOMAINS \
    --dns-cloudflare --dns-cloudflare-credentials /cloudflare_auth.key

