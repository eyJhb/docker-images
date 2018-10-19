# Certbot - Cloudflare DNS

This Certbot does NOT use the HTTP way of validating the ownership of the Domain, but rather uses DNS to do so.
For this we currently use cloudflare, where a API key is needed for this to work.

## How it works?
Currently on boot it runs `/start.sh`, which creates `/cloudflare_auth.key` file, which contains the cloudflare e-mail and API key.
Next a crond in foreground mode is started, that runs `/bin/certbot-get-cert.sh` once a week (should suffice for renewal etc.).

A crontab then runs every day at 00:00, which runs `/bin/certbot-get-cert.sh` and gets the certificates specified.
If you were to want a certificated without waiting a day, just do the following (I like to run my commands from a interactive shell).

```
docker exec -it <docker-pid> sh
/bin/certbot-get-cert.sh
```

## Environment variables 
Environment variables needed for it to work.

```
- CERT_EMAIL=<e-mail to associate with Lets Encrypt>
- CERT_DOMAINS=<comma seperated list of domains to get certs for, eg. my-domain.com,*.teams.my-domain.com>
- CLOUDFLARE_EMAIL=<e-mail associated at cloudflare and the API key>
- CLOUDFLARE_API_KEY=<api-key from cloudflare>
```

## Volumes to mount
To retrieve the certs, a bind mount is required to `/etc/letsencrypt`.

```
-v /place/to/store/certs:/etc/letsencrypt
```

## Directories created
The following directories are created, when Certbot runs.

```
accounts/
archive/
csr/
keys/
live/
renewal/
renewal-hooks/
```

The live domains live in `live/`, and contains all domains names, which we got certificates for, eg. `live/my-domain.com/`
The documentation for the keys, can be found under the domain names directory, in the file `README`, but should look similar to this.

```
`privkey.pem`  : the private key for your certificate.
`fullchain.pem`: the certificate file used in most server software.
`chain.pem`    : used for OCSP stapling in Nginx >=1.3.7.
`cert.pem`     : will break many server configurations, and should not be used
                 without reading further documentation (see link below).
```
