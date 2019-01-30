FROM debian:stretch

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0

RUN apt update && apt-get install -y \
    make gcc-avr avr-libc avrdude 

WORKDIR /src

