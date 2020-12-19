FROM node

RUN apt-get update && \
    apt-get install -y default-jre-headless && \
    wget -O /usr/local/bin/apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.5.0.jar && \
    wget -O /usr/local/bin/apktool https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool && \
    chmod +x /usr/local/bin/apktool /usr/local/bin/apktool.jar

RUN npx apk-mitm

ENTRYPOINT [ "bash" ]
