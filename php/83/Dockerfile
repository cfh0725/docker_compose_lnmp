FROM php:8.3-fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN cp "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini" \
    && sed -i "s/memory_limit = 128M/memory_limit = 256M/" "$PHP_INI_DIR/php.ini"

RUN apt-get update \
    && apt-get install libicu-dev libpng-dev libzip-dev vim git zip -y

RUN docker-php-ext-install gd zip exif intl pdo_mysql opcache \
    && docker-php-ext-enable pdo_mysql opcache
