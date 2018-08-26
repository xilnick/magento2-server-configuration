#!/usr/bin/env bash

apt-get \
    --yes -yq install \
    php-fpm \
    php-mysql \
    php7.1-mcrypt \
    php-curl \
    php-cli \
    php-gd \
    php7.1-xsl \
    php-json \
    php-intl \
    php-pear \
    php-dev \
    php-common \
    php-soap \
    php-mbstring \
    php-zip \
    php7.1-bcmath \
    php-imagick

service php7.1-fpm restart
