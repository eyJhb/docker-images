FROM debian:stretch

# label
LABEL maintainer="eyJhb <eyjhb@gmail.com>"

# envs
ENV bitlbee_port=6680

# install packages
RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    bitlbee-libpurple

# ports and volumes
EXPOSE 6680

# copy stuff
copy root/ /

# expose volumes
VOLUME ["/config"]

# init our script
ENTRYPOINT ["/init.sh"]
