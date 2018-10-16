FROM debian:stretch

# label
LABEL maintainer="eyJhb <eyjhb@gmail.com>"

# envs
ENV BITLBEEPORT=6680

# install packages
RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    bitlbee-libpurple

# copy stuff
COPY root/ /

# ports and volumes
EXPOSE 6680

# expose volumes
VOLUME ["/config"]

# init our script
ENTRYPOINT ["/init.sh"]
