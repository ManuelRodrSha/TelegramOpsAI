#!/bin/sh

echo "Starting TELEGRAMOPSAI..."

echo "Waiting for PostgreSQL to be ready..."
until pg_isready -h "${DB_HOST:-postgres}" -p "${DB_PORT:-5432}" -U "${DB_USER:-admin}"; do
  echo "PostgreSQL not ready, retrying in 2s..."
  sleep 2
done

echo "PostgreSQL is ready!"

exec "$@"