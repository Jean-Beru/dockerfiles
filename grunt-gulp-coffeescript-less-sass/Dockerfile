FROM jeanberu/nodejs

RUN	apk add --update ruby-dev \
    && rm -rf /var/cache/apk/* \
    && gem install sass \
    && npm install -g grunt-cli gulp coffee-script less sass \
    && npm cache clean
