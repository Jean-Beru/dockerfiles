FROM resin/rpi-raspbian:jessie

RUN echo 'deb http://download.opensuse.org/repositories/home:/emby/Debian_8.0/ /' >> /etc/apt/sources.list.d/emby-server.list \
    && wget http://download.opensuse.org/repositories/home:emby/Debian_8.0/Release.key \
    && apt-key add - < Release.key \
    && apt-get update \
    && apt-get install emby-server \
    && rm -rf /var/cache/apk/*

CMD ["service", "emby-server", "start"]
