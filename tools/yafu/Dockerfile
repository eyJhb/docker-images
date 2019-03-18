# FROM debian:stretch
FROM alpine:3.9

# to change gmp-ecm version, one needs to find the new URL
# replacing the version numbers ARE NOT ENOUGH
ENV ECM_FILE_ID 36224
ENV ECM_FILE_NAME ecm-7.0.4
RUN apk add --no-cache \
    alpine-sdk libtool m4 autoconf automake gmp-dev && \
    wget https://gforge.inria.fr/frs/download.php/file/${ECM_FILE_ID}/${ECM_FILE_NAME}.tar.gz -O /tmp/ecm.tar.gz && \
    cd /tmp && \
    tar -zxvf ecm.tar.gz && \
    cd ${ECM_FILE_NAME} && \
    libtoolize && \
    ./configure --with-gmp=/usr/ && \
    make && \
    cp /tmp/${ECM_FILE_NAME}/ecm /tmp/ecm

FROM alpine:3.9
LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.1
ENV APP_VERSION 1.34

ENV PATH "$PATH:/opt/yafu/"

RUN apk add --no-cache bash wget unzip && \
    wget https://kent.dl.sourceforge.net/project/yafu/${APP_VERSION}/yafu-${APP_VERSION}.zip -O /tmp/yafu.zip && \
    mkdir -p /opt/yafu && \
    unzip /tmp/yafu.zip -d /opt/yafu && \
    chmod +x /opt/yafu/yafu 

COPY --from=0 /tmp/ecm /opt/ecm/

ENTRYPOINT ["/opt/yafu/yafu", "-ecm_path", "/opt/ecm/ecm"]

