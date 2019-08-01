FROM php:7.2-fpm

WORKDIR /app

RUN apt-get update
RUN apt-get install -y \
    libmcrypt-dev libbz2-dev \
#    php-mcrypt php-gd php-pear \
    curl ccze cron \
    libz-dev libmemcached-dev libpng-dev libssl-dev gnupg libzip-dev
RUN docker-php-ext-install \
    mbstring tokenizer bz2 gd zip \
    mysqli pdo_mysql pcntl bcmath opcache
#RUN curl -sS https://getcomposer.org/installer | php && \
#    mv composer.phar /usr/local/bin/composer && \
#    composer self-update
#RUN pecl install -f memcached ev mongodb
#RUN docker-php-ext-enable ev opcache memcached mongodb
#RUN  apt -y install ssh rsync

ADD custom.ini /.user.ini

#ADD cron.tab /etc/cron.d/laravel-cron
#RUN chmod 0664 /etc/cron.d/laravel-cron
