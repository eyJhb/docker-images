FROM eyjhb/alpine-base:3.7

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0
ENV APP_VERSION 2.20.17

# install packages
RUN \
  apk add --no-cache \
    python3 && \
    python3 -m ensurepip && \
    python3 -m pip install flexget==$APP_VERSION transmissionrpc && \
    rm -r /root/.cache && \
    rm -r /usr/lib/python*/ensurepip

# copy root directories
COPY root/ /

# health checks
HEALTHCHECK --interval=90s --timeout=10s --retries=3 \
      CMD /bin/sh /healthcheck.sh

# ports and volumes
EXPOSE 3539
VOLUME ["/config", "/data"]

ENTRYPOINT ["/init"]
