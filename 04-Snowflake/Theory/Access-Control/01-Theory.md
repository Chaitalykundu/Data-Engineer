# Content

- [Content](#content)
- [Access control](#access-control)
- [Authentication vs access control](#authentication-vs-access-control)
- [Snowflake Access Control Model](#snowflake-access-control-model)
- [Core components](#core-components)
  - [1. User](#1-user)
  - [2. Role](#2-role)
    - [Types of Roles](#types-of-roles)
  - [3. Privilege](#3-privilege)
    - [Required privileges for reading a table](#required-privileges-for-reading-a-table)
  - [4. Securable object](#4-securable-object)
  - [5. Grants](#5-grants)
    - [Object privilege grant](#object-privilege-grant)
    - [Role Grant](#role-grant)
  - [6. Role Hierarchy and Privilege Inheritance](#6-role-hierarchy-and-privilege-inheritance)
    - [Example](#example)
      - [Explanation](#explanation)
  - [7. Ownership](#7-ownership)
    - [Transfer ownership](#transfer-ownership)

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

```md
WHO → User / Role
WHAT → Privilege
ON WHAT → Securable Object
```

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

Direct user grants through UBAC make permissions harder to audit and maintain at scale.

Direct privileges granted to a user through UBAC become effective when `USE SECONDARY ROLES ALL` is enabled for the session..

&nbsp;

&nbsp;

# Core components

| Component             | Meaning                                                        | Example                              |
| --------------------- | -------------------------------------------------------------- | ------------------------------------ |
| **Users**             | Human or service identities accessing Snowflake                | `CHAITALY`, `DBT_SERVICE_USER`       |
| **Roles**             | Containers for privileges                                      | `DATA_ENGINEER_ROLE`                 |
| **Privileges**        | Permissions to perform actions                                 | `SELECT`, `USAGE`, `CREATE TABLE`    |
| **Securable Objects** | Snowflake resources on which privileges are granted            | Warehouse, Database, Schema, Table   |
| **Role Hierarchy**    | Roles granted to other roles for privilege inheritance         | `RAW_READ_ROLE → DATA_ENGINEER_ROLE` |
| **Ownership**         | Special control over an object                                 | `OWNERSHIP` on a table/schema        |
| **Grants**            | Relationships connecting roles, privileges, objects, and users | `GRANT SELECT ... TO ROLE`           |

&nbsp;

&nbsp;

## 1. User

A user represents a person or service connecting to Snowflake.

```sql
CREATE USER CHAITALY
    PASSWORD = 'StrongPassword'
    DEFAULT_ROLE = DATA_ANALYST;
```

&nbsp;

It could be:

- Human user
- Application/service user
- dbt service account

&nbsp;

&nbsp;

## 2. Role

A role is the central component of RBAC.

A role is a collection of privileges. Roles are assigned to users

```sql
CREATE ROLE DATA_ANALYST;

GRANT ROLE DATA_ANALYST
TO USER CHAITALY;
```

&nbsp;

Roles can also be assigned to other roles, creating a role hierarchy.


```sql
CREATE ROLE DATA_ANALYST;

GRANT ROLE DATA_ANALYST
TO ROLE ROLEDATA_ENGINEER;
```


&nbsp;

### Types of Roles

```
Roles
│
├── Account Roles
│   ├── System-defined roles
│   │   ├── ORGADMIN
│   │   ├── ACCOUNTADMIN
│   │   ├── SECURITYADMIN
│   │   ├── USERADMIN
│   │   ├── SYSADMIN
│   │   └── PUBLIC
│   │
│   └── Custom Account Roles
│       ├── Access Roles
│       └── Functional Roles
│
└── Database Roles
```

&nbsp;

&nbsp;

## 3. Privilege

Privilege means permissions granted on objects.

A privilege allows a specific operation on an object.

| Privilege      | Purpose                                               |
| -------------- | ----------------------------------------------------- |
| `USAGE`        | Use warehouse, database, or schema as applicable      |
| `SELECT`       | Read table or view data                               |
| `INSERT`       | Insert rows                                           |
| `UPDATE`       | Update rows                                           |
| `DELETE`       | Delete rows                                           |
| `CREATE TABLE` | Create tables in a schema                             |
| `OPERATE`      | Start, stop, suspend, or resume a warehouse           |
| `MODIFY`       | Change warehouse properties, including warehouse size |
| `MONITOR`      | View warehouse queries and usage                      |
| `OWNERSHIP`    | Full control over an object                           |

&nbsp;

&nbsp;

### Required privileges for reading a table

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

## 4. Securable object

A securable object is a **Snowflake object** to which access privileges can be granted.

```
Account
│
├── Warehouse
├── Integration
├── Resource Monitor
│
└── Database
      │
      └── Schema
            │
            ├── Table
            ├── View
            ├── Stage
            ├── Stream
            ├── Task
            ├── Function
            ├── File Format
            └── Pipe
```

This matters because having access to a table does not automatically mean you have all the required access to its parent containers.

&nbsp;

### Account-Level Objects vs Database-Level vs Schema-Level Objects



| Feature       | 🏢 Account-Level         | 📦 Database-Level    | 📁 Schema-Level                                      |
| ------------- | ------------------------ | -------------------- | ---------------------------------------------------- |
| 📌 Scope      | Entire Snowflake account | Inside a database    | Inside a schema                                      |
| 🎯 Purpose    | Manage platform access   | Organize databases   | Organize objects                                     |
| 📍 Position   | Top-most                 | Middle               | Lower                                                |
| 👤 Examples   | Users, Roles, Warehouses | Databases            | Schemas                                              |
| 📄 Contains   | Everything               | Schemas              | Tables, Views, Streams, Tasks, Stored procedure, UDF |
| 🔑 Privileges | CREATE USER, CREATE ROLE | USAGE, CREATE SCHEMA | USAGE, CREATE TABLE                                  |
| 🔄 Dependency | Independent              | Depends on account   | Depends on database                                  |
| ⚙️ Managed By | ACCOUNTADMIN             | SYSADMIN             | SYSADMIN / custom roles                              |
|               |                          |                      |                                                      |

&nbsp;

&nbsp;

## 5. Grants

A grant establishes the relationship between privileges, objects, roles, and users.

There are **two** relationships you should distinguish.

- Object privilege grant
- Role grant

&nbsp;

### Object privilege grant

```sql
GRANT SELECT
ON TABLE CUSTOMERS
TO ROLE RAW_READ_ROLE;
```

&nbsp;

Conceptually:

```md
Object → Privilege → Role
```

&nbsp;

&nbsp;

### Role Grant

Role to Role

```sql
GRANT ROLE RAW_READ_ROLE
TO ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

Role to User

```sql
or:

GRANT ROLE DATA_ENGINEER_ROLE
TO USER CHAITALY;
```

&nbsp;

Conceptually:

```md
Role → Role

# or:

Role → User
```

&nbsp;

&nbsp;

## 6. Role Hierarchy and Privilege Inheritance

Snowflake roles can be granted to other roles.

This creates a role hierarchy.

&nbsp;

### Example

Suppose you create:

```md
RAW_READ_ROLE
↓
DATA_ENGINEER_ROLE
↓
SYSADMIN
```

&nbsp;

You could configure:

```sql
GRANT ROLE RAW_READ_ROLE
TO ROLE DATA_ENGINEER_ROLE;

GRANT ROLE DATA_ENGINEER_ROLE
TO ROLE SYSADMIN;
```

&nbsp;

#### Explanation

If `RAW_READ_ROLE` role has **SELECT on RAW tables**, then `DATA_ENGINEER_ROLE` role inherits those privileges.

And `SYSADMIN`, being above it in this custom hierarchy, can inherit them as well.

This is role inheritance.

&nbsp;

&nbsp;

## 7. Ownership

`OWNERSHIP` is one of the most important privileges in Snowflake.

Every securable object has an owning role.

&nbsp;

For example:

```sql
CREATE TABLE CUSTOMER (...);
```

The role that creates the object generally becomes its owner.

&nbsp;

Conceptually:

```
DATA_ENGINEER_ROLE
       |
    OWNERSHIP
       |
       v
CUSTOMER TABLE
```

`Ownership` gives strong control over the object, including the **ability to manage grants** on it.

&nbsp;

### Transfer ownership

You can transfer ownership:

```sql
GRANT OWNERSHIP ON TABLE TABLE_NAME TO ROLE ROLE_NAME
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;
