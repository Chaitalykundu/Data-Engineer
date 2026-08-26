# Content

- [Content](#content)
- [RBAC](#rbac)
- [Main RBAC components](#main-rbac-components)
- [Access flow](#access-flow)
  - [Example:](#example)
- [RBAC Best Practices](#rbac-best-practices)

&nbsp;

&nbsp;

&nbsp;

# RBAC

RBAC = Role-Based Access Control.

Snowflake uses RBAC to control who can access which objects and what operations they can perform.

&nbsp;

The main principle is:

> Privileges are granted to roles → Roles are granted to users → Users access objects through roles.

&nbsp;

&nbsp;

```mermaid
flowchart TD
    U["User"] --> R["Account role"]
    R --> P["Privileges"]
    P --> O["Snowflake objects"]

    O --> W["Warehouse"]
    O --> D["Database / Schema"]
    O --> T["Table / View"]
```

&nbsp;

&nbsp;


# Why RBAC?

RBAC provides:

- Centralized access management
- Least-privilege security
- Easier onboarding/offboarding
- Separation of duties
- Scalable permission management
- Better auditing and governance


&nbsp;

&nbsp;


# Main RBAC components

| Component        | Purpose                                              | Example                                  |
| ---------------- | ---------------------------------------------------- | ---------------------------------------- |
| User             | Person or service accessing Snowflake                | `CHAITALY_USER`                          |
| Role             | Collection of privileges                             | `DATA_ANALYST_ROLE`                      |
| Privilege        | Permission to perform an action                      | `SELECT`, `INSERT`, `USAGE`              |
| Securable object | Resource being protected                             | Warehouse, database, schema, table       |
| Role hierarchy   | Allows one role to inherit another role’s privileges | `SYSADMIN` inherits `DATA_ENGINEER_ROLE` |
| Ownership        | Gives control over an object                         | `OWNERSHIP ON TABLE`                     |

&nbsp;

&nbsp;

# Access flow

```md
USER → ROLE → PRIVILEGE → OBJECT
```

&nbsp;

## Example:

Suppose we have:

```md
CHAITALY_USER
↓
DATA_ANALYST_ROLE
↓
USAGE + SELECT
↓
ANALYTICS_DB.PUBLIC.EMPLOYEES
```

&nbsp;

We could configure it as:

```sql
CREATE ROLE DATA_ANALYST_ROLE;

GRANT SELECT
ON TABLE EMP_DB.ANALYTICS.EMPLOYEE
TO ROLE DATA_ANALYST_ROLE;

GRANT ROLE DATA_ANALYST_ROLE
TO USER USER1;
```

The user does not require privileges to be granted individually. The user inherits them from the role.

&nbsp;

Now USER1 can use the role:

```sql
USE ROLE DATA_ANALYST_ROLE;
```

&nbsp;


But there is an important issue with the example above.

`SELECT` on the **table** alone isn't sufficient. The role also normally needs `USAGE` on the **parent database and schema**, and a query requires an appropriate **warehouse**.

A more realistic configuration is:

```sql
GRANT USAGE
ON DATABASE EMP_DB
TO ROLE DATA_ANALYST_ROLE;

GRANT USAGE
ON SCHEMA EMP_DB.ANALYTICS
TO ROLE DATA_ANALYST_ROLE;

GRANT SELECT
ON TABLE EMP_DB.ANALYTICS.EMPLOYEE
TO ROLE DATA_ANALYST_ROLE;

GRANT USAGE
ON WAREHOUSE ANALYTICS_WH
TO ROLE DATA_ANALYST_ROLE;
```

&nbsp;

&nbsp;

Snowflake combines both:

```sql
DAC: Role owns the table
              ↓
RBAC: Owner grants SELECT to another role
              ↓
User receives that role
```

&nbsp;

&nbsp;

## Warehouse Access

RBAC also controls compute resources.

### Example:

```sql
GRANT USAGE
ON WAREHOUSE ANALYST_WH
TO ROLE DATA_ANALYST;
```

Without appropriate warehouse privileges, the user may have table access but still be unable to execute queries using that warehouse.
 
&nbsp;

This gives you another troubleshooting chain:

```md
Can user run query?
        |
        +-- Role assigned?
        |
        +-- Warehouse USAGE?
        |
        +-- Database USAGE?
        |
        +-- Schema USAGE?
        |
        +-- Table SELECT?
```

&nbsp;

&nbsp;

# RBAC for Service Accounts

Production systems commonly have service-specific roles.

## Example:
```md
]DBT_SERVICE_USER
        ↓
DBT_TRANSFORMER_ROLE
        ↓
--------------------------
Warehouse → USAGE
Database  → USAGE
Schema    → USAGE
Tables    → SELECT
Schema    → CREATE TABLE
```

&nbsp;

&nbsp;

# Useful RBAC Commands
###Create role

```sql
CREATE ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

### Grant role to user

```sql
GRANT ROLE DATA_ENGINEER_ROLE
TO USER USER1;
```

&nbsp;

### Grant role to another role

The role on the **right side** receives the role on the **left side**.

```sql
GRANT ROLE DATA_ENGINEER_ROLE
TO ROLE SYSADMIN;
```

This means `SYSADMIN` inherits all privileges of `DATA_ENGINEER_ROLE`.

&nbsp;

### Database access
```sql
GRANT USAGE
ON DATABASE ANALYTICS_DB
TO ROLE DATA_ENGINEER_ROLE;
```


&nbsp;

### Schema access
```sql
GRANT USAGE
ON SCHEMA ANALYTICS_DB.RAW
TO ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

### Table access
```sql
GRANT SELECT
ON ALL TABLES IN SCHEMA ANALYTICS_DB.RAW
TO ROLE DATA_ENGINEER_ROLE;
```

&nbsp;


### Future tables
```sql
GRANT SELECT
ON FUTURE TABLES IN SCHEMA ANALYTICS_DB.RAW
TO ROLE DATA_ENGINEER_ROLE;
```


&nbsp;


### Warehouse
```sql
GRANT USAGE
ON WAREHOUSE ETL_WH
TO ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

### Check grants
```sql
SHOW GRANTS TO ROLE DATA_ENGINEER_ROLE;

SHOW GRANTS OF ROLE DATA_ENGINEER_ROLE;

SHOW GRANTS TO USER USER1;
```

&nbsp;

### nRevoke

```sql
REVOKE SELECT
ON TABLE ANALYTICS_DB.RAW.EMPLOYEE
FROM ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

&nbsp;

# RBAC Best Practices

- Grant privileges to roles, not directly to users.
- Apply least privilege.
- Connect custom account roles to `SYSADMIN`.
- Avoid using `ACCOUNTADMIN` for routine work.
- Use `SECURITYADMIN` for centralized grant management.
- Avoid granting business access through `PUBLIC`.
- Separate access roles from functional roles.
- Separate read, write, operate and ownership responsibilities.
- Use future grants for newly created objects.
- Grant custom roles into a controlled hierarchy.
- Grant roles—not individual privileges—to users whenever practical.
- Use managed access schemas when grants must be centrally controlled.
- Regularly review role assignments and privileges.

&nbsp;

&nbsp;

&nbsp;

&nbsp;


# Interview Questions

1. `GRANT ROLE DATA_ENGINEER_ROLE TO ROLE SYSADMIN;` here who will get more privileges and why?

2. 

&nbsp;

&nbsp;

# Answers

## 1. `GRANT ROLE DATA_ENGINEER_ROLE TO ROLE SYSADMIN;` here who will get more privileges and why?

Suppose before the grant:

```md
DATA_ENGINEER_ROLE
├── SELECT on EMPLOYEE
├── INSERT on EMPLOYEE
└── USAGE on ETL_WH

SYSADMIN
└── Its existing privileges
```

After the grant:

```md
DATA_ENGINEER_ROLE
├── SELECT on EMPLOYEE
├── INSERT on EMPLOYEE
└── USAGE on ETL_WH

SYSADMIN
└── Its existing privileges
├── inherits from DATA_ENGINEER_ROLE
      ├── SELECT on EMPLOYEE
      ├── INSERT on EMPLOYEE
      └── USAGE on ETL_WH
```


`SYSADMIN` gets additional effective access because it can now inherit the privileges of `DATA_ENGINEER_ROLE`

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
