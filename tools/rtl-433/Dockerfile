FROM debian:stretch

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0
ENV APP_VERSION 640fc57

RUN apt update && \
    apt install -y \
        git build-essential autoconf libtool \
        libusb-1.0.0-dev librtlsdr-dev rtl-sdr autoconf cmake pkg-config

WORKDIR /tmp

RUN git clone https://github.com/merbanan/rtl_433.git && \
    cd rtl_433 && \
    git checkout $APP_VERSION && \
    autoreconf --install && \
    ./configure && \
    make && \
    make install

ENTRYPOINT ["rtl_433"]

