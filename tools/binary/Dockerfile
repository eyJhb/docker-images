FROM debian:stretch

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0
ENV PATH "$PATH:/opt/scripts"

RUN \
    apt-get update && \
    apt-get install -y \
    binutils gcc-multilib strace \
    gdb-multiarch git \
    socat procps \
    python python-pip && \
    pip install pwn && \
    git clone https://github.com/longld/peda.git ~/peda && \
    echo "source ~/peda/peda.py" >> ~/.gdbinit && \
    # cleanup
    rm /tmp/* | true && \
    rm -rf /var/lib/apt/lists/*

