FROM php:8.5-fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY entrypoint.sh /usr/local/bin/php85-entrypoint

RUN chmod +x /usr/local/bin/php85-entrypoint

RUN cp "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini" \
    && sed -i "s/memory_limit = 128M/memory_limit = 256M/" "$PHP_INI_DIR/php.ini"

RUN apt-get update \
    && apt-get install libicu-dev libzip-dev zip vim git -y

RUN docker-php-ext-install zip intl pdo_mysql opcache \
    && docker-php-ext-enable pdo_mysql opcache

ENTRYPOINT ["/usr/local/bin/php85-entrypoint"]
CMD ["php-fpm"]
