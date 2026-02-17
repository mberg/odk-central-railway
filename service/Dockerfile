# ABOUTME: Custom central-service image for Railway deployment of ODK Central.
# ABOUTME: Extends the official GHCR image with a startup script that writes secrets from env vars to files.
FROM ghcr.io/getodk/central-service:v2025.4.2

COPY service/start-with-secrets.sh /scripts/start-with-secrets.sh
RUN chmod +x /scripts/start-with-secrets.sh

CMD ["/scripts/start-with-secrets.sh"]
