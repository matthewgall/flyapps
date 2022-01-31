FROM binwiederhier/ntfy:latest
# Copy in our configuration
COPY entrypoint.sh /etc/ntfy/entrypoint.sh
# Install dependencies
RUN apk add --no-cache supervisor && \
    apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
        envsubst && \
    chmod +x /etc/ntfy/entrypoint.sh

COPY supervisord.conf /etc/supervisord.conf
ENTRYPOINT ["supervisord", "-c", "/etc/supervisord.conf"]
