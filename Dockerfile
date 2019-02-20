FROM php:7.3-apache

#mode_rewrite
RUN a2enmod rewrite

#PDO_MySQL
RUN docker-php-ext-install pdo_mysql

RUN usermod -u 1000 www-data

EXPOSE 80
