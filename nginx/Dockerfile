FROM nginx:stable-alpine
RUN apk update
RUN apk add --no-cache vim
COPY ./default.conf /etc/nginx/conf.d/default.conf
# RUN chown -R www-data:www-data /home/source/main/storage
