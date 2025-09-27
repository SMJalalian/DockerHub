# Use official nginx image
FROM nginx:alpine

# Install envsubst (from gettext)
RUN apk add --no-cache gettext

# Copy template and startup script
COPY index.html.template /usr/share/nginx/html/index.html.template
COPY start.sh /start.sh

# Make start.sh executable
RUN chmod +x /start.sh

# Set entrypoint
ENTRYPOINT ["/start.sh"]
