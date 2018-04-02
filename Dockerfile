FROM nextcloud:13.0.1-fpm-alpine

ARG ARIA2_VERSION=1.33.1

RUN apk add --no-cache aria2

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
