FROM debian:stretch

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

# Versions
ENV VERSION 1.0
ENV APP_VERSION 1.0
ENV GO_VERSION 1.12.3
ENV PYTHON_OPENCV_VERSION 4.0.1.24

# paths
ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH /go

# Displaystuff
ENV DISPLAY :0

# https://github.com/unetbootin/unetbootin/issues/66
ENV QT_X11_NO_MITSHM 1

# https://matplotlib.org/faq/environment_variables_faq.html
ENV MPLBACKEND=Qt4Agg

RUN apt-get update && \
    apt-get install -y wget git sudo build-essential && \
    # echo https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz -o /tmp/go.tar.gz && \
    wget https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz -O /tmp/go.tar.gz && \
    tar -C /usr/local -xzf /tmp/go.tar.gz && \
    rm -rf /tmp/* && \
    mkdir /go

# go opencv part
RUN \
    go get -u -d gocv.io/x/gocv && \
    cd $GOPATH/src/gocv.io/x/gocv && \
    make install && \
    make clean

RUN \
    apt-get install -y python-pip python-tk python-qt4 && \
    python -m pip install --upgrade pip && \
    python -m pip install opencv-python==${PYTHON_OPENCV_VERSION} matplotlib pillow

WORKDIR /go

