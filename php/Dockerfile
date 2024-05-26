FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    build-essential \
		libfreetype-dev \
		libjpeg62-turbo-dev \
		libpng-dev \
	&& docker-php-ext-configure gd --with-freetype --with-jpeg \
	&& docker-php-ext-install -j$(nproc) gd mbstring xml zip pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /home/source/main

COPY src/ /home/source/main/

EXPOSE 9000

CMD [ "php-fpm" ]