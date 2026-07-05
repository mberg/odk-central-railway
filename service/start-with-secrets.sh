#!/bin/bash
# ABOUTME: Startup wrapper that writes secrets from env vars to files before starting ODK Central.
# ABOUTME: Bridges Railway's env var approach with ODK Central's file-based secrets.

set -e

mkdir -p /etc/secrets

# start-odk.sh unconditionally reads this file, so always create it. Empty is fine
# since Enketo is not deployed in this Railway setup.
echo -n "${ENKETO_API_KEY:-}" > /etc/secrets/enketo-api-key

cd /usr/odk

# No external wait-for-it: v2026.1.x's base image no longer ships it, and start-odk.sh
# already waits for PostgreSQL to become connectable before running migrations.
exec ./start-odk.sh
