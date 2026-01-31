# MariaDB Schema CI/CD with GitHub Actions (Flyway)

This repo demonstrates a safe, repeatable CI pipeline for MariaDB schema changes using:

- Versioned migrations (Flyway)
- Ephemeral MariaDB in CI
- Validation and smoke tests

## Repo layout

- `migrations/` . Versioned SQL migrations
- `scripts/` . CI scripts and smoke SQL
- `.github/workflows/db-ci.yml` . GitHub Actions pipeline
