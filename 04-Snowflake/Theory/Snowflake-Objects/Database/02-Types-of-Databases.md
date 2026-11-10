# Overview

- [Overview](#overview)
- [Database types in Snowflake](#database-types-in-snowflake)
- [Permanent database](#permanent-database)
  - [Syntax](#syntax)
- [Transient database](#transient-database)
  - [Syntax](#syntax-1)
- [Permanent vs Transient](#permanent-vs-transient)

&nbsp;

&nbsp;

&nbsp;

# Database types in Snowflake

For standard user-created databases, Snowflake supports permanent and transient databases. These types differ mainly in their recovery protection; neither type automatically expires.

1. Permanent database
2. Transient database

&nbsp;

&nbsp;

# Permanent database

This is the standard database type.

Characteristics:

- Intended for long-term data storage.
- Supports Time Travel within the configured retention limits for the account's edition.
- Permanent tables have Fail-safe after the Time Travel period.
- Suitable for production environments.

&nbsp;

### Syntax

```sql
CREATE DATABASE PROD_DB;
```

&nbsp;

&nbsp;

# Transient database

Transient databases are designed for data that does not require Fail-safe protection.

Characteristics:

- Does not have Fail-safe.
- Supports Time Travel with a maximum retention of 1 day.
- Useful for temporary or reproducible workloads.
- May reduce storage costs when Fail-safe recovery is not required.

Transient databases do not delete data automatically. They also do not provide Fail-safe recovery, so use them only when the data can be recreated or does not need that protection.

&nbsp;

### Syntax

```sql
CREATE TRANSIENT DATABASE STAGING_DB;
```

&nbsp;

&nbsp;

# Permanent vs Transient

| Feature                   | Permanent                          | Transient                        |
| ------------------------- | ---------------------------------- | -------------------------------- |
| Long-term storage         | Yes                                | Yes, technically possible        |
| Time Travel               | Up to the account edition's limit (up to 90 days in qualifying editions) | Maximum 1 day |
| Fail-safe                 | Yes, for permanent tables          | No                               |
| Production use            | Common                             | Depends on recovery requirements |
| Reproducible staging data | Supported                          | Suitable                         |

The retention limit for permanent databases depends on the Snowflake edition. In Standard Edition, the maximum is 1 day; qualifying higher editions can support up to 90 days. A database's retention setting is a default for contained objects, and a schema or table can have its own setting.

Interview tip: Transient does not mean the data automatically disappears after a short period. It means Snowflake does not provide Fail-safe protection for the transient objects. Database type cannot be changed in place; create a database of the desired type and move or clone the data.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
