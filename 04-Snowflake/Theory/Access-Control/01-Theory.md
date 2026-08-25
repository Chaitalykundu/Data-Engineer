# Content

- [Content](#content)
- [Access control](#access-control)
- [Authentication vs access control](#authentication-vs-access-control)
- [Snowflake Access Control Model](#snowflake-access-control-model)
- [Core components](#core-components)
  - [1. User](#1-user)
  - [2. Role](#2-role)
  - [3. Privilege](#3-privilege)
  - [4. Securable object](#4-securable-object)
- [Required privileges for reading a table](#required-privileges-for-reading-a-table)

&nbsp;

&nbsp;

&nbsp;

# Access control

Access control in Snowflake is a core security feature that ensures only authorized users can access specific data and perform allowed actions.

&nbsp;

Access control = managing who can do what on which object

It answers 3 key questions:

- 👤 **Who** can access Snowflake → User / Role
- 🎯 **What** can they perform → Action (SELECT, INSERT, USAGE, etc.)
- 📦 **Which** objects they can access → Object (database, schema, table, etc.)
  Access control determines:

&nbsp;

It determines who can access database objects and perform operations on specific objects in snowflake.

&nbsp;

&nbsp;

# Authentication vs access control

| Concept        | Purpose                         | Example                         |
| -------------- | ------------------------------- | ------------------------------- |
| Authentication | Confirms identity               | Password, key-pair, OAuth, WIF  |
| Authorization  | Determines permissions          | `SELECT`, `INSERT`, `USAGE`     |
| Access control | Overall authorization framework | Roles, privileges and ownership |

- Authentication answers “Who are you?”
- Access control answers “What can you do?”

&nbsp;

&nbsp;

# Snowflake Access Control Model

Snowflake supports and combines below access control models.

| Model | Stands for                       | Meaning                                                                                                                                                      |
| ----- | -------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| DAC   | **Discretionary Access Control** | Each object has an owner. The owner of an object controls access to it                                                                                       |
| RBAC  | **Role Based Access Control**    | Privileges are granted to roles, and roles to users                                                                                                          |
| UBAC  | **User-based Access Control**    | Access privileges are assigned directly to users. Access control considers privileges assigned directly to users only when USE SECONDARY ROLE is set to ALL. |

&nbsp;

RBAC should remain the standard approach.

Direct user grants through UBAC make permissions harder to audit and maintain at scale. Snowflake only considers direct user privileges when all secondary roles are enabled.

&nbsp;

&nbsp;

# Core components

## 1. User

A user represents a person or service connecting to Snowflake.

```sql
CREATE USER CHAITALY
    PASSWORD = 'StrongPassword'
    DEFAULT_ROLE = DATA_ANALYST;
```

&nbsp;

&nbsp;

## 2. Role

A role is a collection of privileges. Roles are assigned to users

```sql
CREATE ROLE DATA_ANALYST;

GRANT ROLE DATA_ANALYST
TO USER CHAITALY;
```

&nbsp;

&nbsp;

## 3. Privilege

A privilege allows a specific operation on an object.

| Privilege      | Purpose                                |
| -------------- | -------------------------------------- |
| `USAGE`        | Access a warehouse, database or schema |
| `SELECT`       | Read table or view data                |
| `INSERT`       | Insert rows                            |
| `UPDATE`       | Update rows                            |
| `DELETE`       | Delete rows                            |
| `CREATE TABLE` | Create tables in a schema              |
| `OPERATE`      | Start, stop or resize a warehouse      |
| `MONITOR`      | View warehouse activity                |
| `OWNERSHIP`    | Full control over an object            |

&nbsp;

&nbsp;

## 4. Securable object

A securable object is anything on which Snowflake can grant privileges, such as:

- Warehouse
- Database
- Schema
- Table
- View
- Stage
- File format
- Task
- Pipe
- Integration

&nbsp;

&nbsp;

# Required privileges for reading a table

To query a table, having only `SELECT` is not enough. A role normally needs:

| Object        | Required privilege |
| ------------- | ------------------ |
| Warehouse     | `USAGE`            |
| Database      | `USAGE`            |
| Schema        | `USAGE`            |
| Table or view | `SELECT`           |

&nbsp;

```sql
GRANT USAGE ON WAREHOUSE ANALYTICS_WH
TO ROLE DATA_ANALYST;

GRANT USAGE ON DATABASE EMPLOYEE_DB
TO ROLE DATA_ANALYST;

GRANT USAGE ON SCHEMA EMPLOYEE_DB.ANALYTICS
TO ROLE DATA_ANALYST;

GRANT SELECT ON TABLE EMPLOYEE_DB.ANALYTICS.EMPLOYEES
TO ROLE DATA_ANALYST;
```

&nbsp;

The access path is:

```md
Warehouse USAGE +
Database USAGE +
Schema USAGE +
Table SELECT
=

User can query the table
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
