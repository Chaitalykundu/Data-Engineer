# Content

- [Content](#content)
- [Managed Access Schema](#managed-access-schema)
- [Why Managed Access Schema?](#why-managed-access-schema)
- [Creating a Managed Access Schema](#creating-a-managed-access-schema)
- [Regular Schema vs Managed Access Schema](#regular-schema-vs-managed-access-schema)
- [Example](#example)
- [Who Can Manage Grants?](#who-can-manage-grants)
- [Managed Access + RBAC](#managed-access--rbac)
- [Interview Question](#interview-question)
  - [Questions](#questions)
  - [Answers](#answers)
    - [1. What is a Managed Access Schema](#1-what-is-a-managed-access-schema)
  - [2. Regular Schema vs Managed Access Schema in Snowflake](#2-regular-schema-vs-managed-access-schema-in-snowflake)

&nbsp;

&nbsp;

# Managed Access Schema

A Managed Access Schema is a Snowflake schema where **grant management is centralized**.

Normally, an object owner can grant privileges on the object they own. In a managed access schema, object **owners cannot independently grant privileges on their objects**. Privilege management is controlled by the schema owner or a role with appropriate grant-management authority.

This is particularly useful for enterprise RBAC.

&nbsp;

A managed access schema is a Snowflake schema in which object owners cannot independently grant privileges on the objects they own.

Instead, access to every object inside the schema—tables, views, stages, functions, etc.—is centrally controlled by:

- The schema owner
- A role with the global MANAGE GRANTS privilege, typically SECURITYADMIN

&nbsp;

&nbsp;

# Why Managed Access Schema?

Consider:

```md
ANALYTICS_DB
│
└── REPORTING
├── SALES
├── CUSTOMERS
└── ORDERS
```

&nbsp;

Different engineers create different tables:

```md
ENGINEER_A → creates SALES
ENGINEER_B → creates CUSTOMERS
ENGINEER_C → creates ORDERS
```

In a regular schema, object ownership can make access management decentralized.

That can create problems:

```md
Different object owners
↓
Different GRANT decisions
↓
Inconsistent permissions
↓
Harder auditing/governance
```

&nbsp;

Managed access changes this model:

```md
             Schema Owner
                  │
          manages privileges
                  ↓
        MANAGED ACCESS SCHEMA
        ┌────────┼─────────┐
        ↓        ↓         ↓
      SALES   CUSTOMERS  ORDERS
```

&nbsp;

&nbsp;

# Creating a Managed Access Schema

```sql
CREATE SCHEMA ANALYTICS_DB.REPORTING
WITH MANAGED ACCESS;
```

&nbsp;

You can verify schemas using:

```sql
SHOW SCHEMAS;
```

The schema metadata indicates whether it is managed access.

&nbsp;

&nbsp;

# Regular Schema vs Managed Access Schema

| Feature                      | Regular Schema          | Managed Access Schema |
| ---------------------------- | ----------------------- | --------------------- |
| Access management            | More decentralized      | Centralized           |
| Object owner controls grants | Yes                     | Restricted            |
| Schema owner manages grants  | Yes                     | Yes                   |
| Good for centralized RBAC    | Possible                | Better suited         |
| Governance                   | Less centralized        | Stronger              |
| Enterprise use               | Depends on requirements | Very useful           |

&nbsp;

&nbsp;

# Example

Create a managed schema:

```sql
CREATE SCHEMA ANALYTICS_DB.REPORTING
WITH MANAGED ACCESS;
```

Suppose `DATA_ENGINEER_ROLE`creates:

```sql
CREATE TABLE ANALYTICS_DB.REPORTING.SALES (
    SALE_ID NUMBER,
    AMOUNT NUMBER
);
```

Even though the role owns the table, because it is inside a managed access schema, it cannot freely grant table access merely because it owns that table.

For example, don't assume this will be allowed:

```sql
GRANT SELECT
ON TABLE ANALYTICS_DB.REPORTING.SALES
TO ROLE DATA_ANALYST_ROLE;
```

The role performing grant management needs the appropriate authority for the managed schema.

&nbsp;

&nbsp;

# Who Can Manage Grants?

For interview purposes, remember these key authorities:

```sql
Managed Access Schema
        │
        ├── Schema owner
        │
        └── Role with MANAGE GRANTS
```

A high-level security administration role such as `SECURITYADMIN` typically has **MANAGE GRANTS**.

This creates centralized security administration.

&nbsp;

&nbsp;

# Managed Access + RBAC

Managed access schemas work particularly well with the access-role/functional-role architecture.

For example:

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview Question

## Questions

1. What is a Managed Access Schema
2. Regular Schema vs Managed Access Schema in Snowflake

&nbsp;

&nbsp;

## Answers

### 1. What is a Managed Access Schema

A managed access schema centralizes privilege management at the schema level. Unlike a regular schema, an object owner inside a managed access schema cannot independently grant privileges on the object simply because they own it. Instead, grant management is handled by the schema owner or a role with appropriate grant-management authority. I would use managed access schemas in enterprise RBAC designs to enforce separation of duties, least privilege, and consistent access management.

&nbsp;

&nbsp;

## 2. Regular Schema vs Managed Access Schema in Snowflake

The main difference is who is allowed to manage privileges on objects inside the schema.

Regular schema → object owners can manage grants on their objects.
Managed access schema → grant management is centralized at the schema/security-admin level.

&nbsp;
