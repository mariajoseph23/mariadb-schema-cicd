![db-ci](https://github.com/mariajoseph23/mariadb-schema-cicd/actions/workflows/db-ci.yml/badge.svg)

# MariaDB Schema CI/CD with GitHub Actions (Flyway)

## What this project demonstrates
- Schema-as-code using versioned Flyway migrations
- Ephemeral MariaDB in CI via GitHub Actions service containers
- Automated migration and smoke tests on every push or PR to main
- Explicit database readiness checks before migrations run

## Safety guardrails
CI blocks unsafe migration patterns (example: DROP TABLE, TRUNCATE TABLE, DROP DATABASE) using:
- `scripts/sql-guard.sh`
- enforced on every push/PR via `.github/workflows/db-ci.yml`

This repo demonstrates a safe, repeatable CI pipeline for MariaDB schema changes using:

- Versioned migrations (Flyway)
- Ephemeral MariaDB in CI
- Validation and smoke tests

## Repo layout

- `migrations/` . Versioned SQL migrations
- `scripts/` . CI scripts and smoke SQL
- `.github/workflows/db-ci.yml` . GitHub Actions pipeline

