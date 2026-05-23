# Overview

- [Overview](#overview)
- [TRUNCATE command](#truncate-command)
- [Syntax](#syntax)
- [Example](#example)
- [Important Characteristics](#important-characteristics)
- [Difference Between DELETE and TRUNCATE and DROP](#difference-between-delete-and-truncate-and-drop)
- [Important Interview Points](#important-interview-points)
- [Real-Life Analogy](#real-life-analogy)

&nbsp;

&nbsp;

&nbsp;

# TRUNCATE command

`TRUNCATE` is a DDL (Data Definition Language) command used to **remove all rows** from a table quickly.

&nbsp;

&nbsp;

It deletes the data but keeps:

- table structure
- columns
- constraints
- indexes

&nbsp;

&nbsp;

# Syntax

```sql
TRUNCATE TABLE table_name;
```

&nbsp;

&nbsp;

# Example

```sql
TRUNCATE TABLE PRACTICE.DDL.CONSTRAINTS_TEST;
```

This removes all records from `CONSTRAINTS_TEST` table instantly.

Here, `PRACTICE` = db_name, `DDL` = schema_name, `CONSTRAINTS_TEST` = table_name

&nbsp;

&nbsp;

# Important Characteristics

| Feature                        | TRUNCATE    |
| ------------------------------ | ----------- |
| Removes all rows               | Yes         |
| Removes table structure        | No          |
| Faster than DELETE             | Yes         |
| WHERE clause allowed           | No          |
| Resets identity/auto increment | Usually yes |
| Minimal logging                | Yes         |

&nbsp;

&nbsp;

# Difference Between DELETE and TRUNCATE and DROP

| Feature                    | DELETE      | TRUNCATE        | DROP       |
| -------------------------- | ----------- | --------------- | ---------- |
| Command Type               | DML         | DDL             | DDL        |
| Removes Data               | Yes         | Yes             | Yes        |
| Removes Table Structure    | No          | No              | Yes        |
| WHERE Clause Allowed       | Yes         | No              | No         |
| Removes Specific Rows      | Yes         | No              | No         |
| Speed                      | Slow        | Fast            | Very Fast  |
| Rollback Possible          | Usually Yes | Depends on DBMS | Usually No |
| Resets Identity            | No          | Usually Yes     | Yes        |
| Table Exists After Command | Yes         | Yes             | No         |

&nbsp;

&nbsp;

# Important Interview Points

1. Cannot use WHERE

   ❌ Invalid:

   ```sql

   TRUNCATE TABLE Employees
   WHERE emp_id = 1;
   ```

&nbsp;

2. Faster Than DELETE

   Because it does not scan row by row.

&nbsp;

3. Table Structure Remains

   After truncate:
   - columns remain
   - indexes remain
   - constraints remain

&nbsp;

&nbsp;

# Real-Life Analogy

| Operation | Example                       |
| --------- | ----------------------------- |
| DELETE    | Remove some files from folder |
| TRUNCATE  | Empty entire folder quickly   |
| DROP      | Delete folder itself          |

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

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
