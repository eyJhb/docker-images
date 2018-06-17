from eyjhb/alpine-base

# install packages
RUN \
  sed -i -e 's/v[[:digit:]]\.[[:digit:]]/edge/g' /etc/apk/repositories && \
  echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk add --no-cache \
    proftpd \
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
