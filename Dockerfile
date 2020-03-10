FROM php:latest

RUN apt-get update -yqq

RUN apt-get install gnupg -yqq

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get install git nodejs libcurl4-gnutls-dev libicu-dev libmcrypt-dev libvpx-dev libjpeg-dev libpng-dev libxpm-dev zlib1g-dev libfreetype6-dev libxml2-dev libexpat1-dev libbz2-dev libgmp3-dev libldap2-dev unixodbc-dev libpq-dev libsqlite3-dev libaspell-dev libsnmp-dev libpcre3-dev libtidy-dev -yqq

RUN docker-php-ext-install mbstring pdo_mysql curl json intl gd xml zip bz2 opcache

RUN pecl install xdebug

RUN docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer
