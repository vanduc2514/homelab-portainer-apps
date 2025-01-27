FROM traefik:v3.3.2

# for keycloak openid plugin configuration
ARG TRAEFIK_PLUGIN_KEYCLOAKOPENID_CLIENT_SECRET
ENV TRAEFIK_PLUGIN_KEYCLOAKOPENID_CLIENT_SECRET=${TRAEFIK_PLUGIN_KEYCLOAKOPENID_CLIENT_SECRET}

# global configuration for traefik
COPY traefik.yml /etc/traefik/traefik.yml

RUN apk add gettext && \
    envsubst < /etc/traefik/traefik.yml > /tmp/traefik_templated.yml && \
    mv /tmp/traefik_templated.yml /etc/traefik/traefik.yml
