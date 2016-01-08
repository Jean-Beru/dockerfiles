FROM alpine:latest

RUN apk add --update ruby ruby-dev ruby-bigdecimal sqlite sqlite-dev build-base libstdc++ \
    && gem install mailcatcher --no-ri --no-rdoc \
    && apk del --purge ruby-dev build-base \
    && rm -rf /var/cache/apk/*

EXPOSE 1025 1080

CMD ["mailcatcher", "-f", "--ip=0.0.0.0"]
