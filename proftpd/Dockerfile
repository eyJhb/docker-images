FROM eyjhb/alpine-base:3.7

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0
ENV APP_VERSION 1.3.6-r5

# install packages
RUN \
  sed -i -e 's/v[[:digit:]]\.[[:digit:]]/edge/g' /etc/apk/repositories && \
  echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk add --no-cache \
    proftpd=$APP_VERSION \
    proftpd-utils \
    proftpd-mod_auth_file

# copy root directories
COPY root/ /

# health checks
HEALTHCHECK --interval=90s --timeout=3s --retries=3 \
      CMD /bin/sh /healthcheck.sh

# ports and volumes
EXPOSE 21 30000-30009
VOLUME ["/etc/proftpd", "/home/ftpusers"]

ENTRYPOINT ["/init"]
