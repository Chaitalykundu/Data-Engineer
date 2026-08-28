# Content

- [Content](#content)
- [Role](#role)
- [How Roles Work (Flow)](#how-roles-work-flow)
  - [Example](#example)
- [Types of roles](#types-of-roles)
- [Categories of Custom Role](#categories-of-custom-role)
- [Recommended architecture](#recommended-architecture)
- [System-Defined Roles](#system-defined-roles)
  - [System-defined role hierarchy](#system-defined-role-hierarchy)
- [2. Custom Roles](#2-custom-roles)
  - [Access Roles](#access-roles)
    - [Examples](#examples)
  - [Functional Roles](#functional-roles)
    - [Examples](#examples-1)
- [Primary Role vs Secondary Roles](#primary-role-vs-secondary-roles)
  - [Primary Role](#primary-role)
    - [Example](#example-1)
  - [Secondary Roles](#secondary-roles)
- [Interview scenario Question](#interview-scenario-question)
- [Answer](#answer)
  - [1. A user has `SELECT` through `ANALYST_ROLE`, but `DATA_ENGINEER_ROLE` is currently active. Can the user still use the analyst privilege?](#1-a-user-has-select-through-analyst_role-but-data_engineer_role-is-currently-active-can-the-user-still-use-the-analyst-privilege)

&nbsp;

&nbsp;

&nbsp;

# Role

Roles are the entities to which privileges on securable objects can be granted or revoked.

A role is a collection of privileges (permissions)

Instead of giving permissions directly to users:

- You assign permissions → to roles
- Then assign roles → to users

&nbsp;

The roles are assigned to the users to allow them multiple to perform actions required for business functions.

An user can be assigned to multiple roles. This allows users to switch roles.

&nbsp;

&nbsp;

# How Roles Work (Flow)

```md
User → Role → Privileges → Object
```

### Example

```sql
GRANT SELECT ON TABLE sales TO ROLE analyst_role;
GRANT ROLE analyst_role TO USER user1;
```

👉 Result:

`user1` can query the `sales` table

&nbsp;

&nbsp;

# Types of roles

There are two types of roles.

- System defined roles
- Custom roles

&nbsp;

| Role Category            | Purpose                                                                              | Examples                                                           |
| ------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------ |
| **System-defined roles** | Built-in Snowflake administrative roles                                              | `ACCOUNTADMIN`, `SECURITYADMIN`, `USERADMIN`, `SYSADMIN`, `PUBLIC` |
| **Custom Roles**         | Created by organization according to business, application, and access requirements. | `RAW_READ_ROLE`, `DATA_ANALYST_ROLE`                               |

&nbsp;

&nbsp;

# Categories of Custom Role

| Role Category        | Purpose                                               | Examples                                                        |
| -------------------- | ----------------------------------------------------- | --------------------------------------------------------------- |
| **Access roles**     | Hold privileges on specific Snowflake objects         | `RAW_READ_ROLE`, `SALES_RW_ROLE`, `ETL_WH_USAGE_ROLE`           |
| **Functional roles** | Represent a job function and inherit access roles     | `DATA_ENGINEER_ROLE`, `DATA_ANALYST_ROLE`, `DBT_DEVELOPER_ROLE` |
| **Service roles**    | Used for applications, pipelines, or service accounts | `DBT_SERVICE_ROLE`, `AIRFLOW_ROLE`, `ETL_SERVICE_ROLE`          |

&nbsp;

&nbsp;

# Recommended architecture

For interviews, the most important distinction is **Access Role vs Functional Role**

```md
                  SYSTEM-DEFINED ROLES
                           |
                       SYSADMIN
                           |
                    CUSTOM ROLES
                           |
                 Functional Roles
                  /              \
       DATA_ENGINEER_ROLE    DATA_ANALYST_ROLE
              |                    |
         Access Roles          Access Roles
          /       \                 |

RAW_READ RAW_WRITE ANALYTICS_READ
| | |
SELECT INSERT/UPDATE SELECT
| | |
RAW Tables RAW Tables Analytics Tables
```

&nbsp;

Access Role → Object privileges

```sql
GRANT SELECT ON ALL TABLES IN SCHEMA RAW
TO ROLE RAW_READ_ROLE;
```

&nbsp;

Functional Role → Access roles

```sql
GRANT ROLE RAW_READ_ROLE
TO ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

Functional Role → User

```sql
GRANT ROLE DATA_ENGINEER_ROLE
TO USER CHAITALYKUNDU;
```

&nbsp;

So the effective flow is:

```md
User → Functional Role → Access Role → Privileges → Snowflake Objects
```

&nbsp;

&nbsp;

# System-Defined Roles

System-defined roles are predefined roles provided by Snowflake. They are mainly used for account administration, security, user management, and object management.

&nbsp;

## System-defined role hierarchy

```md
                ORGADMIN
                    |
              ACCOUNTADMIN
               /         \
          SYSADMIN     SECURITYADMIN
                           |
                       USERADMIN
```

&nbsp;

| System Role     | Main Responsibility                       | Key Point                                         |
| --------------- | ----------------------------------------- | ------------------------------------------------- |
| `ORGADMIN`      | Organization-level administration         | Manages multiple Snowflake accounts               |
| `ACCOUNTADMIN`  | Highest account-level administrative role | Combines powers of `SYSADMIN` and `SECURITYADMIN` |
| `SECURITYADMIN` | Security and privilege management         | Manages grants and role hierarchy                 |
| `USERADMIN`     | User and role management                  | Creates users and roles                           |
| `SYSADMIN`      | Object/infrastructure administration      | Creates warehouses, databases and other objects   |
| `PUBLIC`        | Automatically available to every user     | Avoid granting sensitive access                   |

&nbsp;

&nbsp;

# 2. Custom Roles

Custom roles are roles created by your organization according to business, application, and access requirements.

&nbsp;

For example:

```sql
CREATE ROLE DATA_ENGINEER_ROLE;
CREATE ROLE DATA_ANALYST_ROLE;
CREATE ROLE RAW_READ_ROLE;
CREATE ROLE RAW_WRITE_ROLE;
```

&nbsp;

Unlike system roles, these roles are not predefined by Snowflake.

Custom roles are commonly designed as **two** logical categories:

```md
Custom Roles
|
+------------------+
| |
Access Roles Functional Roles
```

## Access Roles

An access role is a custom role designed to access to specific Snowflake objects.

Think:

> What objects can this role access?

&nbsp;

### Examples

```md
RAW_READ_ROLE
RAW_WRITE_ROLE
ANALYTICS_READ_ROLE
ETL_WH_USAGE_ROLE
```

&nbsp;

```sql
CREATE ROLE RAW_READ_ROLE;

GRANT USAGE ON DATABASE EMPLOYEE_DB
TO ROLE RAW_READ_ROLE;

GRANT USAGE ON SCHEMA EMPLOYEE_DB.RAW
TO ROLE RAW_READ_ROLE;

GRANT SELECT ON ALL TABLES IN SCHEMA EMPLOYEE_DB.RAW
TO ROLE RAW_READ_ROLE;

GRANT USAGE ON WAREHOUSE WH_DEVELOPER TO ROLE RAW_READ_ROLE;
```

&nbsp;

&nbsp;

## Functional Roles

Functional roles represent a user's business or technical function.

&nbsp;

### Examples

```
DATA_ENGINEER_ROLE
DATA_ANALYST_ROLE
DBT_DEVELOPER_ROLE
DATA_SCIENTIST_ROLE
```

&nbsp;

Instead of granting privileges directly to the functional role, you can grant access roles to it:

```sql
GRANT ROLE RAW_READ_ROLE
TO ROLE DATA_ENGINEER_ROLE;

GRANT ROLE RAW_WRITE_ROLE
TO ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

And users receive functional roles:

```md
USER
↓
Functional Role
↓
Access Role
↓
Privilege
↓
Snowflake Object
```

&nbsp;

&nbsp;

# Primary Role vs Secondary Roles

## Primary Role

A Snowflake session has one active primary role at a time.

```sql
USE ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

You can check it with:

```sql
SELECT CURRENT_ROLE();
```

The primary role is especially important because Snowflake uses it for authorization when creating objects.

&nbsp;

### Example

```md
User: JOHN

Granted roles:
├── DATA_ENGINEER_ROLE
├── ANALYST_ROLE
└── FINANCE_READ_ROLE

Primary role:
DATA_ENGINEER_ROLE
```

&nbsp;

&nbsp;

## Secondary Roles

Secondary roles allow the session to use privileges from additional roles granted to the user.

For example:

```sql
USE SECONDARY ROLES ALL;
```

Now John's session can potentially use privileges coming from his other granted roles as well.

You can inspect them using:

```sql
SELECT CURRENT_SECONDARY_ROLES();
```

&nbsp;

&nbsp;

```sql
USE ROLE DATA_ENGINEER_ROLE;
USE SECONDARY ROLES ALL;
USE SECONDARY ROLES NONE;
SELECT CURRENT_ROLE();
SELECT CURRENT_SECONDARY_ROLES();
```

&nbsp;

&nbsp;

# Interview scenario Question

1. A user has `SELECT` through `ANALYST_ROLE`, but `DATA_ENGINEER_ROLE` is currently active. Can the user still use the analyst privilege?

&nbsp;

&nbsp;

# Answer

## 1. A user has `SELECT` through `ANALYST_ROLE`, but `DATA_ENGINEER_ROLE` is currently active. Can the user still use the analyst privilege?

Potentially yes, if the appropriate secondary role is active and permitted by the account/session configuration.

&nbsp;

&nbsp;
