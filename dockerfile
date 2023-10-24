FROM php:7.4-fpm

# Copia o arquivo de configuração do PHP
COPY php.ini /usr/local/etc/php/

# Instala as extensões do PHP necessárias
RUN docker-php-ext-install pdo_mysql \
    && docker-php-ext-install opcache