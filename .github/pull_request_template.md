## MariaDB Schema Change Checklist

### What does this change do?
Briefly describe the schema change and why it is needed.

---

### Migration details
- [ ] Migration file is versioned correctly (e.g. `V2__add_index_users_created_at.sql`)
- [ ] Migration is backward compatible or impact is understood
- [ ] No unsafe operations (DROP / TRUNCATE) unless explicitly approved

---

### Safety and validation
- [ ] CI pipeline passes (Flyway + smoke tests)
- [ ] SQL guard checks passed
- [ ] Impact on existing queries and indexes considered

---

### Rollback / recovery plan
Describe how this change can be rolled back or mitigated if issues occur.

---

### Production readiness
- [ ] Change reviewed and approved
- [ ] Ready for prod environment approval
