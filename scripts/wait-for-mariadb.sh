#!/usr/bin/env bash
set -euo pipefail

HOST="${DB_HOST:-127.0.0.1}"
PORT="${DB_PORT:-3306}"
USER="${DB_USER:-root}"
PASS="${DB_PASS:-rootpass}"

echo "Waiting for MariaDB at ${HOST}:${PORT} ..."
for i in {1..60}; do
  if mariadb --host="$HOST" --port="$PORT" --user="$USER" --password="$PASS" -e "SELECT 1;" >/dev/null 2>&1; then
    echo "MariaDB is ready."
    exit 0
  fi
  sleep 2
done

echo "MariaDB did not become ready in time."
exit 1