FROM eyjhb/alpine-base:3.7

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0
ENV APP_VERSION 4.2.4-r0

# install packages
RUN \
  apk add --no-cache \
	tvheadend=$APP_VERSION \
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
