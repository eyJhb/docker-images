FROM alpine:3.8

LABEL maintainer="eyJhb <eyjhbb@gmail.com>"

ENV VERSION 1.0

EXPOSE 8080

RUN apk add --no-cache netcat-openbsd

ENTRYPOINT ["nc", "-l", "8080"]
