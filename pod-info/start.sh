#!/bin/sh

export POD_IP=$(hostname -i)

# Replace variable in template
envsubst '${HOSTNAME} ${NGINX_VERSION} ${POD_IP}' < /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html

# Start nginx in foreground
nginx -g 'daemon off;'
