from eyjhb/alpine-base:3.7

# install packages
RUN \
  apk add --no-cache \
	transmission-cli \
	transmission-daemon

# copy root directories
COPY root/ /

# health checks
HEALTHCHECK --interval=90s --timeout=3s --retries=3 \
      CMD /bin/sh /healthcheck.sh

# ports and volumes
EXPOSE 9091 51413
VOLUME ["/config", "/downloads", "/watch"]

ENTRYPOINT ["/init"]
