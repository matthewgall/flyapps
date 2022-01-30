#!/bin/sh

# Load some variables
export BASE_URL="${BASE_URL:-https://nfty-web.fly.dev}"

# Fill in environment variables
cat /etc/ntfy/server.yml.tpl | envsubst > /etc/ntfy/server.yml

# Start the server
echo "Starting ntfy"
/usr/bin/ntfy serve