# Overview

- [Overview](#overview)
- [Categories of SQL command](#categories-of-sql-command)
- [SQL Commands](#sql-commands)
- [Some of The Most Important SQL Commands](#some-of-the-most-important-sql-commands)
- [DDL](#ddl)

&nbsp;

&nbsp;

&nbsp;

# Categories of SQL command

| Category | Full Form                    | Purpose                                                     | Common Commands                                 |
| -------- | ---------------------------- | ----------------------------------------------------------- | ----------------------------------------------- |
| **DDL**  | Data Definition Language     | Define and modify **database schema** and **structure**     | `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME` |
| **DML**  | Data Manipulation Language   | Manipulate **data** in existing tables                      | `SELECT`, `INSERT`, `UPDATE`, `DELETE`          |
| **DQL**  | Data Query Language          | Retrieve data from one or more tables                       | `SELECT`                                        |
| **DCL**  | Data Control Language        | Control **user permissions** and access to data             | `GRANT`, `REVOKE`                               |
| **TCL**  | Transaction Control Language | Manage **transactions** to ensure consistency and integrity | `COMMIT`, `ROLLBACK`, `SAVEPOINT`, `BEGIN`      |

&nbsp;

&nbsp;

# SQL Commands

| DDL      | DML          | DCL    | DQL    | TCL             |
| -------- | ------------ | ------ | ------ | --------------- |
| CREATE   | INSERT       | GRANT  | SELECT | COMMIT          |
| DROP     | UPDATE       | REVOKE |        | ROLLBACK        |
| ALTER    | DELETE       |        |        | SAVEPOINT       |
| TRUNCATE | MERGE        |        |        | SET TRANSACTION |
| COMMENT  | CALL         |        |        |                 |
| RENAME   | EXPLAIN PLAN |        |        |                 |
|          | LOCK TABLE   |        |        |                 |
|          |              |        |        |                 |

&nbsp;

&nbsp;

# Some of The Most Important SQL Commands

- SELECT - extracts data from a database
- UPDATE - updates data in a database
- DELETE - deletes data from a database
- INSERT INTO - inserts new data into a database
- CREATE DATABASE - creates a new database
- ALTER DATABASE - modifies a database
- CREATE TABLE - creates a new table
- ALTER TABLE - modifies a table
- DROP TABLE - deletes a table
- CREATE INDEX - creates an index (search key)
- DROP INDEX - deletes an index

&nbsp;

&nbsp;

# DDL

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
