FROM php:8.2-fpm-alpine

# Update app
RUN apk update

RUN apk add --update --no-cache autoconf g++ make openssl-dev
RUN apk add libpng-dev
RUN apk add libzip-dev
RUN apk add --update linux-headers

RUN docker-php-ext-install gd
RUN docker-php-ext-install zip
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install sockets
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
### End Init install

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

# # Set the working directory
# WORKDIR /home/source/main

# # Copy the source code
# COPY . .

# # Change permissions
# RUN chmod -R 775 /home/source/main

#install xdebug
# RUN pecl install xdebug

# RUN chmod -R 775 /home/source/main
# COPY 90-xdebug.ini "${PHP_INI_DIR}"/conf.d