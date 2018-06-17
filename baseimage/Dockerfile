FROM alpine:3.7

MAINTAINER eyjhb

# set version for s6 overlay
ARG OVERLAY_VERSION="v1.21.4.0"
ARG OVERLAY_ARCH="amd64"

# environment variables
ENV PS1="$(whoami)@$(hostname):$(pwd)$ " \
HOME="/root" \
TERM="xterm"

# add s6-overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/${OVERLAY_VERSION}/s6-overlay-${OVERLAY_ARCH}.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-${OVERLAY_ARCH}.tar.gz -C / && \
    rm -r /tmp/s6-overlay-${OVERLAY_ARCH}.tar.gz

RUN \
 echo "**** install build packages ****" && \
#  apk add --no-cache --virtual=build-dependencies \
#	curl \
#	tar && \
 echo "**** install runtime packages ****" && \
 apk add --no-cache \
    netcat-openbsd \
	bash \
	ca-certificates \
	coreutils \
	shadow \
	tzdata && \
 echo "**** create abc user and make our folders ****" && \
 groupmod -g 1000 users && \
 useradd -u 911 -U -d /config -s /bin/false abc && \
 usermod -G users abc && \
 mkdir -p \
	/app \
	/config \
	/defaults
# echo "**** cleanup ****" && \
# apk del --purge \
#	build-dependencies && \
# rm -rf \
#	/tmp/*

# add local files
COPY root/ /

ENTRYPOINT ["/init"]
