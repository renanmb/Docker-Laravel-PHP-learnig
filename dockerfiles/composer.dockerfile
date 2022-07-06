FROM composer:latest
# Composer is a dependency manager written in and for PHP.
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel

WORKDIR /var/www/html

ENTRYPOINT ["composer", "--ignore-platform-reqs"]