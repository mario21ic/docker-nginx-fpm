#!/bin/sh
php-fpm7 && tail -f /var/log/php7/error.log
