FROM alpine:3.2

RUN mkdir /src \
    && apk add --update nodejs \
    && rm -rf /var/cache/apk/*

WORKDIR /src
