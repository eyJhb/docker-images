FROM alpine:3.8

# label
LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.1
ENV BITLBEE_VERSION 3.5.1
ENV DISCORD_VERSION 0.4.1
ENV SLACK_VERSION 39c7b5bc45beb622d61555630bc741322b1aa920
ENV FACEBOOK_VERSION 7682a3560c737fbbbd7cdf7a5b640bfb3242ec3c

# envs
ENV BITLBEEPORT=6680

# install packages
RUN \
    apk add --no-cache \
        # default for bitlbee
        git alpine-sdk libpurple libotr-dev libevent-dev gnutls-dev glib-dev pidgin-dev \
        # for bitlbee-facebook
        autoconf automake libtool json-glib-dev
# build bitlbee and make install-dev
WORKDIR /tmp
RUN \
    git clone https://github.com/bitlbee/bitlbee.git && \
    cd bitlbee && \
    git checkout tags/$BITLBEE_VERSION && \
    ./configure --prefix=/usr --etcdir=/etc/bitlbee --otr=1 --purple=1  && \
    make && \
    make install-dev

# slack
RUN \
    git clone https://github.com/dylex/slack-libpurple.git && \
    cd slack-libpurple && \
    git checkout $SLACK_VERSION && \
    make

# facebook
RUN \
    export PKG_CONFIG_PATH=/lib/pkgconfig/ && \
    git clone https://github.com/bitlbee/bitlbee-facebook.git && \
    cd bitlbee-facebook && \
    git checkout $FACEBOOK_VERSION && \
    ./autogen.sh && \
    make

# discord
RUN \
    export PKG_CONFIG_PATH=/lib/pkgconfig/ && \
    git clone https://github.com/sm00th/bitlbee-discord.git && \
    cd bitlbee-discord && \
    git checkout tags/$DISCORD_VERSION && \
    ./autogen.sh && \
    ./configure && \
    make

FROM eyjhb/alpine-base:3.7

RUN \
    apk add --no-cache \
        pidgin-dev libotr json-glib \
        alpine-sdk git && \
    # no clue why I need to do this...
    cd /tmp && \
    git clone https://github.com/dylex/slack-libpurple.git && \
    cd slack-libpurple && \
    make && \
    cp libslack.so /usr/lib/purple-2 && \
    apk del alpine-sdk git 

RUN \
    mkdir -p /etc/bitlbee && \
    mkdir -p /share/bitlbee && \
    mkdir -p /usr/lib/purple-2 && \
    mkdir -p /usr/lib/bitlbee

COPY --from=0 /tmp/bitlbee/bitlbee /usr/bin/
COPY --from=0 /tmp/bitlbee/bitlbee.conf /etc/bitlbee/
COPY --from=0 /tmp/bitlbee/motd.txt /etc/bitlbee/
COPY --from=0 /tmp/bitlbee/doc/user-guide/help.txt /usr/share/bitlbee/

# COPY --from=0 /tmp/slack-libpurple/libslack.so /usr/lib/purple-2/
COPY --from=0 /tmp/bitlbee-discord/src/.libs/discord.so /usr/lib/bitlbee/
COPY --from=0 /tmp/bitlbee-facebook/facebook/.libs/facebook.so /usr/lib/bitlbee/

# copy stuff
COPY root/ /

# ports and volumes
EXPOSE 6680

# expose volumes
VOLUME ["/config"]

# init our script
ENTRYPOINT ["/init"]
