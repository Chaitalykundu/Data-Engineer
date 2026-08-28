# Role Hierarchy

A role hierarchy means one role can be granted to another role.

The higher-level role inherits the privileges of the lower-level role.


&nbsp;

Suppose:

```md
RAW_READ_ROLE
      ↓
DATA_ENGINEER_ROLE
      ↓
SYSADMIN
```


You can create this relationship using:

```md
GRANT ROLE RAW_READ_ROLE
TO ROLE DATA_ENGINEER_ROLE;

GRANT ROLE DATA_ENGINEER_ROLE
TO ROLE SYSADMIN;
```

&nbsp;


Therefore:

```md
RAW_READ_ROLE
     │
     │ granted to
     ▼
DATA_ENGINEER_ROLE
     │
     │ granted to
     ▼
SYSADMIN
```

`DATA_ENGINEER_ROLE` inherits the privileges of `RAW_READ_ROLE`.

`SYSADMIN` inherits the privileges available through `DATA_ENGINEER_ROLE`.

&nbsp;

&nbsp;

# Why Role Hierarchy Is Important

Without hierarchy, you may repeatedly grant the same object privileges to multiple roles.

&nbsp;

For example:

```md
DATA_ENGINEER_ROLE → SELECT RAW tables
DATA_SCIENTIST_ROLE → SELECT RAW tables
DATA_ANALYST_ROLE → SELECT RAW tables
```

That becomes difficult to maintain.

&nbsp;

Instead:

- Grant the object privileges once:
  ```sql
  GRANT SELECT ON ALL TABLES IN SCHEMA RAW
  TO ROLE RAW_READ_ROLE;
  ```
- Then reuse that role:

  ```sql
  GRANT ROLE RAW_READ_ROLE TO ROLE DATA_ENGINEER_ROLE;
  GRANT ROLE RAW_READ_ROLE TO ROLE DATA_SCIENTIST_ROLE;
  GRANT ROLE RAW_READ_ROLE TO ROLE DATA_ANALYST_ROLE;
  ```

This is much easier to govern.

&nbsp;

&nbsp;

# Role Inheritance

This is the central concept behind role hierarchy.

Suppose:

```md
ROLE_A
  ↓
ROLE_B
  ↓
ROLE_C
```

&nbsp;


If:

```sql
GRANT ROLE ROLE_A TO ROLE ROLE_B;
GRANT ROLE ROLE_B TO ROLE ROLE_C;
```

Then:

```md
ROLE_B inherits ROLE_A privileges

ROLE_C inherits ROLE_B privileges
       +
       ROLE_A privileges
```
&nbsp;



&nbsp;

# Important Direction of GRANT ROLE

This frequently causes confusion.


```sql
GRANT ROLE Access_role
TO ROLE functional_role;
```

&nbsp;


```sql
GRANT ROLE RAW_READ_ROLE
TO ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

means:

`DATA_ENGINEER_ROLE` inherits `RAW_READ_ROLE`.

&nbsp;

&nbsp;

# Role Hierarchy vs Direct User Grants

Avoid designs like:

```md
USER1 → SELECT TABLE_A
USER1 → SELECT TABLE_B
USER2 → SELECT TABLE_A
USER2 → SELECT TABLE_C
```

This becomes difficult to audit and maintain.

Prefer:

```md
Object privileges
       ↓
Access Roles
       ↓
Functional Roles
       ↓
Users
```

&nbsp;

For example:

```md
RAW tables
    ↓ SELECT
RAW_READ_ROLE
    ↓
DATA_ENGINEER_ROLE
    ↓
CHAITALY
```

This gives you centralized privilege management

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview-Level Design

## Questions

1. How would you design RBAC for Data Engineers and Data Analysts?


&nbsp;

&nbsp;

## Answers

I would separate object-level access from job-function roles. I would create access roles such as `RAW_READ_ROLE`, `RAW_WRITE_ROLE`, and `ANALYTICS_READ_ROLE`, and grant database, schema, and object privileges to those roles. Then I would create functional roles such as `DATA_ENGINEER_ROLE` and `DATA_ANALYST_ROLE`. Access roles would be granted to the appropriate functional roles, and users would receive functional roles rather than direct object privileges. This provides **least privilege, reusable access patterns, simpler auditing, and easier privilege management**.
