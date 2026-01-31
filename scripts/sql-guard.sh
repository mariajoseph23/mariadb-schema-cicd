#!/usr/bin/env bash
set -euo pipefail

# Fail CI if dangerous statements appear in migrations.
# This is a simple guardrail that can be expanded later.

PATTERN='(^|[^A-Z])(DROP[[:space:]]+TABLE|TRUNCATE[[:space:]]+TABLE|DROP[[:space:]]+DATABASE|ALTER[[:space:]]+TABLE[[:space:]]+.*DROP[[:space:]]+COLUMN|DROP[[:space:]]+COLUMN)'
FOUND=0

shopt -s nullglob
for f in migrations/*.sql; do
  # strip SQL comments (basic) and scan remaining content
  if grep -Ein "$PATTERN" "$f" >/dev/null; then
    echo "ERROR: Unsafe SQL detected in $f"
    grep -Ein "$PATTERN" "$f" || true
    FOUND=1
  fi
done

if [ "$FOUND" -ne 0 ]; then
  echo "Blocking pipeline due to unsafe SQL. Use an approved process and explicit review."
  exit 1
fi

echo "SQL guard passed. No blocked patterns found."

