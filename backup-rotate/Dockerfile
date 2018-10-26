FROM eyjhb/alpine-base:3.7

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0
ENV APP_VERSION 6.0

# install packages
RUN \
  apk add --no-cache \
    rsyslog \
    python3 && \
    python3 -m ensurepip && \
    python3 -m pip install --no-cache-dir rotate-backups==$APP_VERSION && \
    rm -r /root/.cache && \
    rm -r /usr/lib/python*/ensurepip

# copy root directories
COPY root/ /

# health checks
HEALTHCHECK --interval=90s --timeout=10s --retries=3 \
      CMD /bin/sh /healthcheck.sh

# ports and volumes
VOLUME ["/config", "/media"]

ENTRYPOINT ["/init"]
