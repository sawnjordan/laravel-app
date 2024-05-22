FROM php:8.2-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN docker-php-ext-install gd pdo pdo_mysql