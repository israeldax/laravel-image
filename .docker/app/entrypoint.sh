#! /bin/bash

composer install

php artisan key:generate

php artisan config:cache

php artisan migrate

chmod -R 775 storage

php-fpm
