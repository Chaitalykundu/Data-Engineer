# Overview

- [Overview](#overview)
- [Definition](#definition)
  - [Note](#note)
- [List of DDL Commands](#list-of-ddl-commands)

&nbsp;

&nbsp;

&nbsp;

# Definition

DDL = Data Definition Language

DDL is used to **define, modify, and manage database objects** such as tables, schemas, views, indexes, and constraints.

&nbsp;

DDL commands-

- Deals with the structure of the database.
- Affects the schema.

&nbsp;

DDL is different from DML, which **manipulates data** instead of structure.

&nbsp;

## Note

⚠️ DDL commands are **auto-committed**, which means any **changes made are permanent** and cannot be rolled back.

&nbsp;

&nbsp;

# List of DDL Commands

Shortcut - **CART-CD**

**All Cool Developers Really Think Carefully**

&nbsp;

&nbsp;

| Statement  | Description                                                                | Example                                                    |
| ---------- | -------------------------------------------------------------------------- | ---------------------------------------------------------- |
| `CREATE`   | Creates new database or database objects like tables, views, schemas, etc. | `CREATE TABLE employees (...);`                            |
| `ALTER`    | Modifies existing database objects                                         | `ALTER TABLE employees ADD age INT;`                       |
| `RENAME`   | Renames database objects like tables and columns.                          | `RENAME TABLE old_name TO new_name;`                       |
| `TRUNCATE` | Removes all records from a table but retains its structure.                | `TRUNCATE TABLE employees;`                                |
| `COMMENT`  | Used to add descriptive text                                               | `COMMENT ON TABLE employees IS 'Stores employee details';` |
| `DROP`     | Deletes objects like tables/views permanently                              | `DROP TABLE employees;`                                    |

&nbsp;

&nbsp;

&nbsp;
