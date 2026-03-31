# Overview

- [Overview](#overview)
- [Role](#role)
- [How Roles Work (Flow)](#how-roles-work-flow)
  - [Example:](#example)
- [Types of roles](#types-of-roles)
  - [System defined roles](#system-defined-roles)
  - [🧑‍💻 2. Custom Roles](#-2-custom-roles)
- [Snowflake Roles \& Their Uses](#snowflake-roles--their-uses)

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

The roles are assigned to the users ro allow them multiple to perform actions required for business functions.

&nbsp;

&nbsp;

An user can be assigned to multiple roles. This allows users to switch roles.

&nbsp;

&nbsp;

# How Roles Work (Flow)

```md
User → Role → Privileges → Object
```

### Example:

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

&nbsp;

## System defined roles

These come built-in.

The System-defined roles are

- ORGADMIN
- ACCOUNTADMIN
- SECURITYADMIN
- SYSADMIN

&nbsp;

&nbsp;

🔹 ACCOUNTADMIN

Full access (super admin)

&nbsp;

🔹 SYSADMIN

Manages:

- Databases
- Schemas
- Tables

&nbsp;

🔹 SECURITYADMIN

Manages:

- Users
- Roles

&nbsp;

🔹 USERADMIN

Creates users

&nbsp;

🔹 PUBLIC

Default role assigned to all users

&nbsp;

&nbsp;

## 🧑‍💻 2. Custom Roles

👉 Created based on business needs

&nbsp;

&nbsp;

# Snowflake Roles & Their Uses

| Role              | Level        | Main Use            | Key Responsibilities                                        | When to Use                          |
| ----------------- | ------------ | ------------------- | ----------------------------------------------------------- | ------------------------------------ |
| **ORGADMIN**      | Organization | Manage entire org   | Create/manage accounts, billing, usage monitoring           | Multi-account setup, billing control |
| **ACCOUNTADMIN**  | Account      | Full control        | Manage everything (users, roles, DBs, warehouses, policies) | Initial setup, critical admin tasks  |
| **SYSADMIN**      | Account      | Object management   | Create/manage databases, schemas, tables, warehouses        | Daily data engineering work          |
| **SECURITYADMIN** | Account      | Security management | Manage users, roles, grants, RBAC                           | Access control & governance          |
| **USERADMIN**     | Account      | User management     | Create/modify users only                                    | User onboarding/offboarding          |
| **PUBLIC**        | Account      | Default access      | Basic minimal privileges for all users                      | Shared/common access (limited use)   |
|                   |              |                     |                                                             |                                      |

&nbsp;

&nbsp;

&nbsp;

&nbsp;
