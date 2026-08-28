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

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
