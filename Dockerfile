FROM nextcloud:13.0.4-fpm-alpine

RUN apk add --no-cache aria2

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
