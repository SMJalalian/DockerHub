#!/bin/sh

# Default color mapping
case "${COLOR:-blue}" in
    red) COLOR="#e74c3c" ;;
    green) COLOR="#16a085" ;;
    blue) COLOR="#2980b9" ;;
    yellow) COLOR="#f1c40f" ;;
    pink) COLOR="#be2edd" ;;
    purple) COLOR="#8e44ad" ;;
    orange) COLOR="#e67e22" ;;
    brown) COLOR="#a0522d" ;;
    *)
        echo "Unknown color name '$COLOR', using default blue."
        COLOR="#2980b9"
        ;;
esac

# Replace variable in template
envsubst '${COLOR} ${HOSTNAME} ${NGINX_VERSION}' < /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html

# Start nginx in foreground
nginx -g 'daemon off;'
