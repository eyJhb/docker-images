FROM eyjhb/alpine-base:3.7

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0
ENV APP_VERSION 2.92-r8

# install packages
RUN \
  apk add --no-cache \
	transmission-cli=$APP_VERSION \
	transmission-daemon=$APP_VERSION

# copy root directories
COPY root/ /

# health checks
HEALTHCHECK --interval=90s --timeout=3s --retries=3 \
      CMD /bin/sh /healthcheck.sh

# ports and volumes
EXPOSE 9091 51413
VOLUME ["/config", "/downloads", "/watch"]

ENTRYPOINT ["/init"]
