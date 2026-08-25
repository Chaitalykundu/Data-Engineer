
# RBAC

RBAC = Role-Based Access Control.

Snowflake uses RBAC to control who can access which objects and what operations they can perform.


Privileges are granted to roles → Roles are granted to users → Users access objects through roles.


&nbsp;

&nbsp;

## Definition
```
                        USER
                          │
                    assigned to
                          ▼
                         ROLE
                    ┌─────┴─────┐
                    │           │
               inherits      inherits
                    ▼           ▼
                 ROLE A       ROLE B
                    │           │
               privileges   privileges
                    │           │
                    ▼           ▼
             ┌───────────┐  ┌───────────┐
             │ DATABASE  │  │ WAREHOUSE │
             │ SCHEMA    │  │ TABLE     │
             │ TABLE     │  │ VIEW      │
             └───────────┘  └───────────┘
```

&nbsp;





&nbsp;


# Core Components of Snowflake RBAC

| Component        | Purpose                         | Example                     |
| ---------------- | ------------------------------- | --------------------------- |
| User             | Identity accessing Snowflake    | `CHAITALY`                  |
| Role             | Collection of privileges        | `DATA_ENGINEER_ROLE`        |
| Privilege        | Permission to perform an action | `SELECT`, `INSERT`, `USAGE` |
| Securable Object | Object being protected          | Database, schema, table     |
| Role Hierarchy   | One role inherits another role  | `ANALYST_ROLE → SYSADMIN`   |
| Ownership        | Gives control over an object    | `OWNERSHIP ON TABLE`        |

&nbsp;


&nbsp;

# Basic Access Flow

Suppose we have:
```md
User
 ↓
DATA_ANALYST_ROLE
 ↓
SELECT privilege
 ↓
EMPLOYEE table
```

We could configure it as:

```sql
CREATE ROLE DATA_ANALYST_ROLE;

GRANT SELECT
ON TABLE EMP_DB.ANALYTICS.EMPLOYEE
TO ROLE DATA_ANALYST_ROLE;

GRANT ROLE DATA_ANALYST_ROLE
TO USER USER1;
```

Now USER1 can use the role:
```sql
USE ROLE DATA_ANALYST_ROLE;
```



&nbsp;

But there is an important issue with the example above.

`SELECT` on the table alone isn't sufficient. The role also normally needs USAGE on the parent database and schema, and a query requires an appropriate warehouse.


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

Think of it as:


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


# DAC and managed access schemas

DAC behaves differently in a managed access schema.

```sql
CREATE SCHEMA EMPLOYEE_DB.SECURE_HR
WITH MANAGED ACCESS;
```

&nbsp;

In a regular schema:

- Object owners can grant privileges on their objects.

&nbsp;

In a managed access schema:

- Object owners cannot independently grant access.
- The schema owner or a role with MANAGE GRANTS controls grants.
- Access management is centralized.

Therefore, managed access schemas intentionally restrict normal DAC behavior.


&nbsp;


&nbsp;


&nbsp;


&nbsp;



