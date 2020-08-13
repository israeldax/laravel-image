#! /bin/bash

composer install

dockerize -wait tcp://db:3306 -timeout 120s

php artisan key:generate

php artisan config:cache

php artisan migrate

chmod -R 775 storage

php-fpm
