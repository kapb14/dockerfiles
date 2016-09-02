FROM php:5.6-fpm

MAINTAINER Aleksandr Karushin <kapb14@gmail.com>

ADD ./bitrix.ini /usr/local/etc/php/conf.d
ADD ./bitrix.pool.conf /usr/local/etc/php-fpm.d/

RUN apt-get update && apt-get install -y \
    libpq-dev \
    libmemcached-dev \
    curl \
    libldb-dev \
    libpng12-dev \
    libssl-dev \
    libmcrypt-dev \
    libldap2-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    --no-install-recommends \
    && rm -r /var/lib/apt/lists/* \
    && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install mcrypt mysqli pdo_mysql gd mbstring ldap \
    && pecl install memcached \
    && docker-php-ext-enable memcached \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN usermod -u 1000 www-data

WORKDIR /var/www

CMD ["php-fpm"]

EXPOSE 9000


