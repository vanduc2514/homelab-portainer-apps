#!/bin/sh

# Install gettext for envsubst
apk add --no-cache gettext

# Substitute environment variables in the Traefik configuration
envsubst < /etc/traefik/dynamic/http.yml > /tmp/http_templated.yml
mv /tmp/http_templated.yml /etc/traefik/dynamic/http.yml

# Execute the original Traefik entrypoint
exec /entrypoint.sh traefik
