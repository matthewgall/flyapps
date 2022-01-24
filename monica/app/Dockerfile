FROM monica:fpm-alpine

# Copy in our secret keys
COPY oauth-private.key /var/www/html/oauth-private.key
COPY oauth-public.key /var/www/html/oauth-public.key

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# supervisord dependencies
RUN set -ex; \
	\
	apk add --no-cache \
        supervisor \
	;

COPY supervisord.conf /etc/supervisord.conf
CMD ["supervisord", "-c", "/etc/supervisord.conf"]
