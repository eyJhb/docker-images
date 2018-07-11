from eyjhb/alpine-base:3.7

# install packages
RUN apk add --no-cache rssh openssh-server

# copy root directories
COPY root/ /

# health checks
HEALTHCHECK --interval=90s --timeout=10s --retries=3 \
      CMD /bin/sh /healthcheck.sh

# ports and volumes
VOLUME ["/config", "/media"]

ENTRYPOINT ["/init"]
