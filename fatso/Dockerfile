FROM alpine:3.8

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0

# set default unhealthy interval to be
# every friday between 12:00 and 12:05
ENV UNHEALTHY_START 00 12 * * 1
ENV UNHEALTHY_STOP 05 12 * * 1

# set our default timezone
ENV TZ CET

# install tzdata
RUN apk add --no-cache tzdata

# copy root directories
COPY root/ /

# health checks
HEALTHCHECK --interval=30s --timeout=2s --retries=1 \
      CMD /bin/sh /healthcheck.sh

ENTRYPOINT ["/bin/sh", "/init.sh"]
