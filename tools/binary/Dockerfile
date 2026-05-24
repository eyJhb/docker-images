FROM ubuntu:20.04

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0
ENV PATH "$PATH:/opt/scripts"

RUN \
    apt-get update && \
    DEBIAN_FRONTEND="noninteractive" \
    apt-get install -y \
    binutils gcc-multilib strace \
    gdb-multiarch gdbserver git \
    socat netcat procps python3 python3-pip tmux

RUN \
    # python3 && \
    # python3 python3-pip && \
    pip install pwn && \
    git clone https://github.com/pwndbg/pwndbg ~/pwndbg && \
    cd ~/pwndbg && ./setup.sh && \
    # git clone https://github.com/longld/peda.git ~/peda && \
    # echo "source ~/peda/peda.py" >> ~/.gdbinit && \
    # cleanup
    rm /tmp/* | true && \
    rm -rf /var/lib/apt/lists/*
