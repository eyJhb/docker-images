FROM certbot/dns-cloudflare:v0.26.0
LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0
ENV APP_VERSION v0.26.0

WORKDIR /
COPY /root /

ENTRYPOINT ["sh", "/start.sh"]

