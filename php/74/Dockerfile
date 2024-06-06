FROM php:7.4-fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN cp "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

RUN apt-get update \
    && apt-get install libzip-dev git -y \
    && docker-php-ext-install zip
