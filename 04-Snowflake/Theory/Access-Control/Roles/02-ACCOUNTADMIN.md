# Overview

- [Overview](#overview)
- [ORGADMIN](#orgadmin)
- [Where ORGADMIN Fits](#where-orgadmin-fits)
- [Key Responsibilities of ACCOUNTADMIN](#key-responsibilities-of-accountadmin)
  - [Full Access to All Objects](#full-access-to-all-objects)
  - [2. Manage Users \& Roles](#2-manage-users--roles)
  - [3. Manage Security Policies](#3-manage-security-policies)
  - [4. Monitor Usage \& Billing](#4-monitor-usage--billing)
  - [4. Manage Warehouses](#4-manage-warehouses)
- [Example Actions](#example-actions)
- [Important Notes](#important-notes)
  - [Do NOT use ACCOUNTADMIN for daily work](#do-not-use-accountadmin-for-daily-work)
  - [Use Principle of Least Privilege](#use-principle-of-least-privilege)
- [ACCOUNTADMIN vs Other Roles](#accountadmin-vs-other-roles)

&nbsp;

&nbsp;

&nbsp;

# ORGADMIN

The **ACCOUNTADMIN** role in Snowflake is the most powerful role at the account level. It has full control over everything inside a Snowflake account.

ACCOUNTADMIN = Super Admin of a Snowflake account

- Highest privilege within a single account
- Combines capabilities of:
  - SYSADMIN
  - SECURITYADMIN

&nbsp;

&nbsp;

# Where ORGADMIN Fits

```
Organization Level → ORGADMIN
        ↓
Account Level → ACCOUNTADMIN (Top role in account)
        ↓
Other Roles → SYSADMIN, SECURITYADMIN, etc.
```

&nbsp;

&nbsp;

# Key Responsibilities of ACCOUNTADMIN

### Full Access to All Objects

- Databases, schemas, tables, views
- Warehouses

&nbsp;

### 2. Manage Users & Roles

```sql
CREATE USER user1;
CREATE ROLE analyst_role;
GRANT ROLE analyst_role TO USER user1;
```

&nbsp;

### 3. Manage Security Policies

- Masking policies
- Row access policies

&nbsp;

### 4. Monitor Usage & Billing

- Query history
- Credit usage
- Storage usage

&nbsp;

### 4. Manage Warehouses

```sql
CREATE WAREHOUSE compute_wh;
```

&nbsp;

&nbsp;

# Example Actions

```sql
USE ROLE ACCOUNTADMIN;

-- Check users
SHOW USERS;

-- Check warehouses
SHOW WAREHOUSES;

-- Grant access
GRANT USAGE ON DATABASE sales_db TO ROLE analyst_role;
```

&nbsp;

&nbsp;

# Important Notes

### Do NOT use ACCOUNTADMIN for daily work

👉 Why?

- Risk of accidental data loss
- Security issues

&nbsp;

### Use Principle of Least Privilege

Use:

- SYSADMIN → for data work
- SECURITYADMIN → for user/role management

&nbsp;

&nbsp;

# ACCOUNTADMIN vs Other Roles

| Role          | Responsibility              |
| ------------- | --------------------------- |
| ACCOUNTADMIN  | Everything                  |
| SYSADMIN      | Objects (DB, schema, table) |
| SECURITYADMIN | Users & roles               |
| USERADMIN     | Create users                |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
