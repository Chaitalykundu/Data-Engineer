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

| Component             | Meaning                                             | Example                            |
| --------------------- | --------------------------------------------------- | ---------------------------------- |
| **Users**             | Human or service identities accessing Snowflake     | `CHAITALY`, `DBT_SERVICE_USER`     |
| **Roles**             | Containers for privileges                           | `DATA_ENGINEER_ROLE`               |
| **Privileges**        | Permissions to perform actions                      | `SELECT`, `USAGE`, `CREATE TABLE`  |
| **Securable Objects** | Snowflake resources on which privileges are granted | Warehouse, Database, Schema, Table |

&nbsp;

&nbsp;

## Other Components

| Component          | Meaning                                                        | Example                              |
| ------------------ | -------------------------------------------------------------- | ------------------------------------ |
| **Role Hierarchy** | Roles granted to other roles for privilege inheritance         | `RAW_READ_ROLE → DATA_ENGINEER_ROLE` |
| **Ownership**      | Special control over an object                                 | `OWNERSHIP` on a table/schema        |
| **Grants**         | Relationships connecting roles, privileges, objects, and users | `GRANT SELECT ... TO ROLE`           |

&nbsp;
