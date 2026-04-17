FROM php:7.4-fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN cp "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini" \
    && sed -i "s/memory_limit = 128M/memory_limit = 256M/" "$PHP_INI_DIR/php.ini"

RUN apt-get update \
    && apt-get install libicu-dev libzip-dev zip vim git -y

RUN docker-php-ext-install zip intl pdo_mysql \
    && docker-php-ext-enable pdo_mysql
