FROM debian:stretch

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

# Versions
ENV VERSION 1.0

# Displaystuff
ENV DISPLAY :0

# https://github.com/unetbootin/unetbootin/issues/66
ENV QT_X11_NO_MITSHM 1

RUN apt-get update && \
    apt-get install -y icedtea-netx && \
    rm -rf /tmp/* 

# trust everything
RUN sed -i 's/jdk.jar.disabledAlgorithms=.*/jdk.jar.disabledAlgorithms=/g' /etc/java-8-openjdk/security/java.security

WORKDIR /src

