FROM php:7.4-fpm-alpine

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

ADD ./php/www.conf /usr/local/etc/php-fpm.d/www.conf