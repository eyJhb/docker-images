#!/bin/sh

#generate our cloudflare auth file
echo "[docker-certbot] Generating Cloudflare auth file"
printf "dns_cloudflare_email = ${CLOUDFLARE_EMAIL}\ndns_cloudflare_api_key = ${CLOUDFLARE_API_KEY}" > /cloudflare_auth.key
chmod 600 /cloudflare_auth.key

#start crond
echo "[docker-certbot] crond"
crond -l 2 -f
