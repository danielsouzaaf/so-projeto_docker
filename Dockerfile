FROM php:7.1-fpm-alpine
# Build dependencies packages
RUN apk add --no-cache --virtual .build-deps libxml2-dev
# Runtime dependencies packages
RUN apk add --no-cache \
        postgresql-dev \
        libjpeg-turbo-dev \
        libpng-dev \
        freetype-dev
# PHP Extensions
RUN docker-php-ext-install soap pdo pdo_pgsql \
        && docker-php-ext-configure gd \
            --with-freetype-dir=/usr/include/ \
            --with-jpeg-dir=/usr/include/ \
        && docker-php-ext-install gd
# Delete build dependencies packages
RUN apk del .build-deps
# Allow Composer to be run as root
ENV COMPOSER_ALLOW_SUPERUSER 1
# Run Composer installer
RUN curl -sS https://getcomposer.org/installer \
    | php -- --install-dir=/usr/local/bin --filename=composer
# Set up the working directory
ADD . /app
# Language
ENV LANG=pt_BR.UTF-8
ENV LANGUAGE=pt_BR:pt
ENV LC_ALL=pt_BR.UTF-8
# Working directory
WORKDIR /app