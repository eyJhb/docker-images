from eyjhb/alpine-base

# install packages
RUN \
  apk add --no-cache \
	tvheadend \
	tvheadend-dvb-scan \
    ffmpeg

# copy root directories
COPY root/ /

# health checks
HEALTHCHECK --interval=90s --timeout=3s --retries=3 \
      CMD /bin/sh /healthcheck.sh

# ports and volumes
EXPOSE 9981 9982
VOLUME ["/config", "/data"]

ENTRYPOINT ["/init"]
