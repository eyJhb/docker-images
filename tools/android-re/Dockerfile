# FROM alpine:3.9
FROM debian:stretch

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0
ENV ANDROID_PLATFORM_TOOLS_VERSION r28.0.1
ENV APKTOOL_VERSION 2.3.4
ENV D2J_VERSION 2.0
ENV PROCYON_VERSION 0.5.30
ENV PATH "$PATH:/opt/android/platform-tools/"
ENV PATH "$PATH:/opt/apktool"
ENV PATH "$PATH:/opt/d2j"
ENV PATH "$PATH:/opt/procyon"
ENV PATH "$PATH:/opt/scripts"

RUN \
    apt-get update && \
    apt-get install -y wget unzip && \
    apt-get install -y openjdk-8-jdk-headless zipalign && \
    mkdir -p /opt && \
    cd /tmp && \
    # android platform tools
    mkdir /opt/android && \
    wget https://dl.google.com/android/repository/platform-tools_${ANDROID_PLATFORM_TOOLS_VERSION}-linux.zip && \
    unzip platform-tools_${ANDROID_PLATFORM_TOOLS_VERSION}-linux.zip -d /opt/android && \
    # apktool
    mkdir /opt/apktool && \
    wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_${APKTOOL_VERSION}.jar -O /opt/apktool/apktool.jar && \
    wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -O /opt/apktool/apktool && \
    chmod +x /opt/apktool/apktool && \
    # d2j tools!
    mkdir /opt/d2j && \
    wget https://netcologne.dl.sourceforge.net/project/dex2jar/dex2jar-${D2J_VERSION}.zip && \
    unzip /tmp/dex2jar-${D2J_VERSION}.zip -d /opt/d2j && \
    mv /opt/d2j/dex2jar-${D2J_VERSION}/* /opt/d2j/ && \
    rm -rf /opt/d2j/dex2jar-${D2J_VERSION}/ && \
    rm /opt/d2j/*.bat && \
    chmod +x /opt/d2j/* && \
    # procyon-decompiler
    mkdir /opt/procyon && \
    wget https://bitbucket.org/mstrobel/procyon/downloads/procyon-decompiler-${PROCYON_VERSION}.jar -O /opt/procyon/procyon.jar && \
    # we are just using the same wrapper from apktool for procyon!
    wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -O /opt/procyon/procyon && \
    sed -i s/apktool/procyon/g /opt/procyon/procyon && \
    chmod +x /opt/procyon/procyon && \
    # cleanup
    rm /tmp/* | true && \
    rm -rf /var/lib/apt/lists/*

# add scripts
COPY scripts /opt/scripts


VOLUME ["root/.android"]
