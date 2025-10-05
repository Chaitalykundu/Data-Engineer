# Overview

- [Overview](#overview)
- [Definition](#definition)
- [SQL Keywords](#sql-keywords)
  - [1. Data Query Language (DQL) — Read data](#1-data-query-language-dql--read-data)
  - [2. Data Definition Language (DDL) — Define structure](#2-data-definition-language-ddl--define-structure)
  - [3. Data Manipulation Language (DML) — Change data](#3-data-manipulation-language-dml--change-data)
  - [4. Data Control Language (DCL) — Permissions \& security](#4-data-control-language-dcl--permissions--security)
  - [5. Transaction Control Language (TCL) — Transactions](#5-transaction-control-language-tcl--transactions)
  - [6. Operators \& Logical Keywords](#6-operators--logical-keywords)
  - [7. Joins and Relationships](#7-joins-and-relationships)
  - [8. Other Useful Keywords](#8-other-useful-keywords)

&nbsp;

&nbsp;

&nbsp;

# Definition

SQL keywords are reserved words that have special meanings within the SQL language.

We can't use them as identifiers (like table or column names) because the database uses them to understand and execute your SQL commands. They are the building blocks of SQL syntax, defining the structure and operations you want to perform on your database.

&nbsp;

&nbsp;

# SQL Keywords

## 1. Data Query Language (DQL) — Read data

| Keyword                 | Purpose                               | Example                                                                                         |
| ----------------------- | ------------------------------------- | ----------------------------------------------------------------------------------------------- |
| **SELECT**              | Retrieve data from one or more tables | `SELECT name, age FROM students;`                                                               |
| **DISTINCT**            | Remove duplicate values               | `SELECT DISTINCT department FROM employees;`                                                    |
| **FROM**                | Specify the table(s) to query         | `SELECT * FROM customers;`                                                                      |
| **WHERE**               | Filter rows based on condition        | `SELECT * FROM orders WHERE amount > 500;`                                                      |
| **ORDER BY**            | Sort result rows                      | `SELECT * FROM products ORDER BY price DESC;`                                                   |
| **LIMIT / TOP / FETCH** | Limit number of rows                  | `SELECT * FROM students LIMIT 5;`                                                               |
| **GROUP BY**            | Group rows for aggregation            | `SELECT department, COUNT(*) FROM employees GROUP BY department;`                               |
| **HAVING**              | Filter grouped data                   | `SELECT department, AVG(salary) FROM employees GROUP BY department HAVING AVG(salary) > 50000;` |

&nbsp;

&nbsp;

## 2. Data Definition Language (DDL) — Define structure

| Keyword      | Purpose                                     | Example                                             |
| ------------ | ------------------------------------------- | --------------------------------------------------- |
| **CREATE**   | Create database objects (table, view, etc.) | `CREATE TABLE students (id INT, name VARCHAR(50));` |
| **ALTER**    | Modify existing structure                   | `ALTER TABLE students ADD age INT;`                 |
| **DROP**     | Delete a database object                    | `DROP TABLE students;`                              |
| **TRUNCATE** | Remove all rows (reset table)               | `TRUNCATE TABLE employees;`                         |
| **RENAME**   | Change name of an object                    | `ALTER TABLE students RENAME TO learners;`          |

&nbsp;

&nbsp;

## 3. Data Manipulation Language (DML) — Change data

| Keyword         | Purpose                                 | Example                                               |
| --------------- | --------------------------------------- | ----------------------------------------------------- |
| **INSERT INTO** | Add new rows                            | `INSERT INTO students (id, name) VALUES (1, 'John');` |
| **UPDATE**      | Modify existing data                    | `UPDATE employees SET salary = 60000 WHERE id = 5;`   |
| **DELETE**      | Remove rows                             | `DELETE FROM students WHERE id = 1;`                  |
| **MERGE**       | Insert or update depending on condition | `MERGE INTO sales ...` (advanced feature)             |

&nbsp;

&nbsp;

## 4. Data Control Language (DCL) — Permissions & security

| Keyword    | Purpose                  | Example                                  |
| ---------- | ------------------------ | ---------------------------------------- |
| **GRANT**  | Give privileges to users | `GRANT SELECT ON employees TO user1;`    |
| **REVOKE** | Remove privileges        | `REVOKE SELECT ON employees FROM user1;` |

&nbsp;

&nbsp;

## 5. Transaction Control Language (TCL) — Transactions

| Keyword                       | Purpose                       | Example                      |
| ----------------------------- | ----------------------------- | ---------------------------- |
| **BEGIN / START TRANSACTION** | Begin a transaction           | `BEGIN;`                     |
| **COMMIT**                    | Save changes permanently      | `COMMIT;`                    |
| **ROLLBACK**                  | Undo changes                  | `ROLLBACK;`                  |
| **SAVEPOINT**                 | Mark a point to roll back to  | `SAVEPOINT before_update;`   |
| **SET TRANSACTION**           | Define transaction properties | `SET TRANSACTION READ ONLY;` |

&nbsp;

&nbsp;

## 6. Operators & Logical Keywords

| Keyword                       | Purpose                             | Example                                             |
| ----------------------------- | ----------------------------------- | --------------------------------------------------- |
| **AND / OR / NOT**            | Combine or negate conditions        | `WHERE salary > 50000 AND department = 'IT'`        |
| **IN / NOT IN**               | Match a value in a list             | `WHERE department IN ('HR', 'Finance')`             |
| **BETWEEN**                   | Match a range of values             | `WHERE age BETWEEN 20 AND 30`                       |
| **LIKE / ILIKE**              | Pattern matching                    | `WHERE name LIKE 'A%'`                              |
| **IS NULL / IS NOT NULL**     | Check for NULL values               | `WHERE manager_id IS NULL`                          |
| **AS**                        | Create an alias for column or table | `SELECT name AS employee_name FROM employees;`      |
| **CASE / WHEN / THEN / ELSE** | Conditional logic                   | `CASE WHEN salary>50000 THEN 'High' ELSE 'Low' END` |

&nbsp;

&nbsp;

## 7. Joins and Relationships

| Keyword        | Purpose                            | Example                                                                 |
| -------------- | ---------------------------------- | ----------------------------------------------------------------------- |
| **JOIN**       | Combine rows from multiple tables  | `SELECT * FROM orders JOIN customers ON orders.cust_id = customers.id;` |
| **INNER JOIN** | Only matching rows                 | `INNER JOIN departments d ON e.dept_id = d.id;`                         |
| **LEFT JOIN**  | All from left + matches from right | `LEFT JOIN ...`                                                         |
| **RIGHT JOIN** | All from right + matches from left | `RIGHT JOIN ...`                                                        |
| **FULL JOIN**  | All from both sides                | `FULL JOIN ...`                                                         |
| **ON**         | Join condition                     | `ON employees.dept_id = departments.id`                                 |
| **USING**      | Simplified join condition          | `USING (dept_id)`                                                       |

&nbsp;

&nbsp;

## 8. Other Useful Keywords

| Keyword                       | Purpose                         | Example                                                                    |
| ----------------------------- | ------------------------------- | -------------------------------------------------------------------------- |
| **UNION / UNION ALL**         | Combine result sets             | `SELECT name FROM employees UNION SELECT name FROM managers;`              |
| **EXISTS**                    | Check for subquery existence    | `WHERE EXISTS (SELECT 1 FROM orders WHERE orders.cust_id = c.id)`          |
| **ANY / ALL**                 | Compare against multiple values | `salary > ALL (SELECT salary FROM interns)`                                |
| **DEFAULT**                   | Default value for a column      | `CREATE TABLE students (grade INT DEFAULT 0);`                             |
| **CHECK**                     | Enforce condition               | `CHECK (age >= 18)`                                                        |
| **PRIMARY KEY / FOREIGN KEY** | Define constraints              | `PRIMARY KEY(id)`                                                          |
| **INDEX**                     | Speed up lookups                | `CREATE INDEX idx_name ON employees(name);`                                |
| **VIEW**                      | Virtual table                   | `CREATE VIEW high_salary AS SELECT * FROM employees WHERE salary > 70000;` |

&nbsp;

&nbsp;
