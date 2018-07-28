FROM alpine:3.7

# install packages
RUN apk add --no-cache curl python3
RUN curl https://raw.githubusercontent.com/psypanda/hashID/master/hashid.py -o hashid.py 

ENTRYPOINT ["python3", "hashid.py"]
