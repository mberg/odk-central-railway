#!/bin/bash
# ABOUTME: Startup wrapper that writes secrets from env vars to files before starting ODK Central.
# ABOUTME: Bridges Railway's env var approach with ODK Central's file-based secrets.

set -e

mkdir -p /etc/secrets

if [ -n "$ENKETO_API_KEY" ]; then
  echo -n "$ENKETO_API_KEY" > /etc/secrets/enketo-api-key
fi

cd /usr/odk
exec wait-for-it "${DB_HOST:-postgres}:5432" --timeout=60 -- ./start-odk.sh
