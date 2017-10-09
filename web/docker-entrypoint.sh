#!/bin/sh

cd /var/www/laravel && php artisan migrate

/usr/sbin/apache2ctl -D FOREGROUND