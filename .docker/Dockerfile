# Esse é o docker da imagem do Docker HUB
FROM php:7.3.6-fpm-alpine3.9
RUN apk add --no-cache mysql-client
RUN docker-php-ext-install pdo pdo_mysql

RUN rm -rf /var/www/html

COPY . /var/www

WORKDIR /var/www

RUN chown -R root:www-data storage/logs && \
    chown -R root:www-data storage/framework/sessions

EXPOSE 9000

ENTRYPOINT ["php-fpm"]
