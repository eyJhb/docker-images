FROM eyjhb/alpine-base:3.7

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0
ENV APP_VERSION 2.3.4-r0

# install packages
RUN apk add --no-cache rssh=$APP_VERSION openssh-server

# copy root directories
COPY root/ /

# health checks
HEALTHCHECK --interval=90s --timeout=10s --retries=3 \
      CMD /bin/sh /healthcheck.sh

# ports and volumes
VOLUME ["/config", "/media"]

ENTRYPOINT ["/init"]
