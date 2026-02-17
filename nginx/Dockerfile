# ABOUTME: Custom nginx image for Railway deployment of ODK Central.
# ABOUTME: Extends the official GHCR image with config templates and Railway-specific backend routing.
FROM ghcr.io/getodk/central-nginx:v2025.4.2

COPY odk.conf.template /usr/share/odk/nginx/odk.conf.template
COPY client-config.json.template /usr/share/odk/nginx/client-config.json.template
COPY backend.conf /usr/share/odk/nginx/backend.conf
