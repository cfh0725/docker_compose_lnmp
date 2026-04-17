#!/bin/sh
set -eu

REDIS_ADMIN_DIR="/srv/php85/demo/phpRedisAdmin"

if [ -f "$REDIS_ADMIN_DIR/composer.json" ] && [ ! -e "$REDIS_ADMIN_DIR/vendor/autoload.php" ]; then
  echo "phpRedisAdmin vendor missing, running composer install..."
  cd "$REDIS_ADMIN_DIR"
  composer install --no-interaction --prefer-dist --optimize-autoloader
fi

exec docker-php-entrypoint "$@"
