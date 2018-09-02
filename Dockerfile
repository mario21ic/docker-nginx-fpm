FROM alpine:3.7
MAINTAINER Mario Inga <mario21ic@gmail.com>

RUN apk update && apk add php7-fpm

COPY www.conf /etc/php7/php-fpm.d/www.conf

COPY ./entrypoint.sh /entrypoint.sh

#CMD php-fpm7 -F
ENTRYPOINT /entrypoint.sh

