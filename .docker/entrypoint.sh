#! /bin/bash

composer install

php artisan key:generate

php artisan config:cache

php artisan migrate

chown -R root:www-data storage/logs
chown -R root:www-data storage/framework/sessions

php-fpm
