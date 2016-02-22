FROM php:5.4-apache

RUN apt-get update \
    && apt-get install -y git libicu-dev libmcrypt-dev libpng-dev libcurl3-dev libxml2-dev libjpeg-dev libpng-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-configure gd --enable-gd-native-ttf --with-jpeg-dir=/usr/lib/x86_64-linux-gnu --with-png-dir=/usr/lib/x86_64-linux-gnu \
    && docker-php-ext-install mbstring pdo_mysql intl mcrypt gd exif curl soap zip \
    && pecl install apc \
    && apt-get autoremove -y \
    && apt-get clean all \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

COPY php.ini /usr/local/etc/php/conf.d/akeneo_pim.ini
COPY vhost.conf /etc/apache2/sites-available/akeneo_pim.conf
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN a2enmod rewrite \
    && a2ensite akeneo_pim

WORKDIR /var/www/akeneo_pim

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["apache2-foreground"]
