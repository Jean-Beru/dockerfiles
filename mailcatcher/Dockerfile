FROM debian:wheezy

RUN apt-get update \
    && apt-get install -y ruby ruby-dev build-essential sqlite3 libsqlite3-dev \
    && gem install mailcatcher --no-ri --no-rdoc \
    && apt-get remove --purge -y build-essential ruby-dev libsqlite3-dev \
    && apt-get autoclean \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 1025
EXPOSE 1080

CMD ["mailcatcher", "-f", "--ip=0.0.0.0"]
