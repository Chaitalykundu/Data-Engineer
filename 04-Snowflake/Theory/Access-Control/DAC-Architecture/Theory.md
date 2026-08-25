
# DAC

DAC stands for Discretionary Access Control.

Under DAC, every Snowflake object has an owner. The owner can decide which roles or users receive access to that object.

&nbsp;



&nbsp;

## Definition

DAC means the owner of an object has control over who can access it and what operations they can perform.

&nbsp;





&nbsp;
# How DAC works

```md
Role creates object
        ↓
Role receives OWNERSHIP
        ↓
Owner controls the object
        ↓
Owner grants privileges to other roles
```

When a role creates an object, that role normally receives the `OWNERSHIP` privilege.

&nbsp;


&nbsp;

## Example

```sql
USE ROLE HR_ADMIN;

CREATE TABLE EMPLOYEE_DB.HR.EMPLOYEES (
    EMP_ID   NUMBER,
    EMP_NAME VARCHAR,
    SALARY   NUMBER
);
```


Here, `HR_ADMIN` becomes the table owner.

&nbsp;


&nbsp;

# DAC vs RBAC

| DAC                                 | RBAC                                      |
| ----------------------------------- | ----------------------------------------- |
| Based on object ownership           | Based on roles                            |
| Owner decides who receives access   | Privileges are assigned to roles          |
| Controlled through `OWNERSHIP`      | Controlled through role grants            |
| Useful for decentralized management | Better for scalable enterprise management |

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



