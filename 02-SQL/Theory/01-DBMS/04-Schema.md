# Schema

A schema in SQL is a logical container that holds and organizes database objects such as:

- Tables
- Views
- Tasks
- Dynamic Tables
- Indexes
- Stored procedures
- Triggers
- Functions
- Sequences

&nbsp;

&nbsp;

# Why Use Schemas

| Purpose              | Benefit                                                                          |
| -------------------- | -------------------------------------------------------------------------------- |
| Organization         | Groups related tables & objects (e.g., HR, Finance, Sales schemas)               |
| Access Control       | Manage permissions on a schema level                                             |
| Modularity           | Separates application modules logically                                          |
| Avoid Name Conflicts | Allows same table name in different schemas (e.g., `sales.users` and `hr.users`) |

&nbsp;

&nbsp;

# Schema vs Database

| Term         | Description                                       | Example                          |
| ------------ | ------------------------------------------------- | -------------------------------- |
| **Database** | A complete data store (contains multiple schemas) | `company_db`                     |
| **Schema**   | A logical grouping inside a database              | `hr`, `finance`, `marketing`     |
| **Table**    | A data object inside a schema                     | `hr.employees`, `finance.budget` |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

## Grant a schema to a role

```sql
GRANT SELECT ON SCHEMA hr TO analyst_user;
```

&nbsp;

&nbsp;
