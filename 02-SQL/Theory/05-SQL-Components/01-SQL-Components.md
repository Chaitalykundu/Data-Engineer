# Overview

- [Overview](#overview)
- [Components](#components)
- [1. Keywords](#1-keywords)
  - [Examples](#examples)
  - [Example](#example)
- [2. Identifiers](#2-identifiers)
  - [Examples](#examples-1)
  - [Example](#example-1)
- [3. Literal or Constant. / Constants](#3-literal-or-constant--constants)
  - [Example](#example-2)
- [4. Operators](#4-operators)
  - [Examples](#examples-2)
  - [Example](#example-3)
- [5. Comments](#5-comments)
  - [Single-line](#single-line)
  - [Multi-line](#multi-line)
- [6. Clauses](#6-clauses)
  - [Examples](#examples-3)
  - [Example](#example-4)
- [7. Functions](#7-functions)
  - [Examples](#examples-4)
  - [Example](#example-5)
- [8. Delimiters / Symbols](#8-delimiters--symbols)
  - [Examples](#examples-5)
  - [Example](#example-6)
- [9. Expressions](#9-expressions)
- [10. Constraints](#10-constraints)
  - [Examples:](#examples-6)
  - [Example](#example-7)
- [11. Data Types](#11-data-types)
  - [Examples:](#examples-7)
  - [Example](#example-8)
- [12. Aliases](#12-aliases)
  - [Example](#example-9)
- [13. Joins](#13-joins)
  - [Examples:](#examples-8)
  - [Example](#example-10)
- [14) Subqueries](#14-subqueries)
- [15. Views](#15-views)
- [16. Indexes](#16-indexes)
- [17. Transactions](#17-transactions)

&nbsp;

&nbsp;

&nbsp;

# Components

Common SQL components include:

1. Keywords
2. Identifiers
3. Literals / Constants
4. Operators
5. Comments
6. Clauses
7. Functions
8. Delimiters / Symbols
9. Expressions
10. Constraints
11. Data Types
12. Aliases
13. Joins
14. Subqueries
15. Views
16. Indexes
17. Transactions

&nbsp;

&nbsp;

&nbsp;

# 1. Keywords

**Reserved words** that have special meaning in SQL.

&nbsp;

## Examples

- SELECT
- FROM
- WHERE
- ORDER BY
- GROUP BY
- INSERT
- UPDATE

&nbsp;

## Example

```sql
SELECT first_name
FROM Employee;
```

Here `SELECT` and `FROM` are keywords.

&nbsp;

&nbsp;

&nbsp;

# 2. Identifiers

Names used for database objects.

&nbsp;

## Examples

- Table names
- Column names
- Database names
- Schema names

&nbsp;

## Example

```sql
SELECT age
FROM Employee;
```

Here:

- `Employee` → table identifier
- `age` → column identifier

&nbsp;

&nbsp;

&nbsp;

# 3. Literal or Constant. / Constants

**Fixed values** used in queries.

- Strings → 'Rahul'
- Numbers → 50000
- Dates → '2026-05-03'

&nbsp;

## Example

```sql
SELECT *
FROM Employee
WHERE first_name = 'Rahul';
```

Here `Rahul` is Literal or Constant.

&nbsp;

&nbsp;

&nbsp;

# 4. Operators

Used to perform comparisons/calculations.

&nbsp;

## Examples

- Arithmetic → +, -, \*
- Comparison → =, >, <
- Logical → AND, OR, NOT

&nbsp;

## Example

```sql
SELECT *
FROM Employee
WHERE age > 25 AND Monthly_sal > 40000;
```

&nbsp;

&nbsp;

&nbsp;

# 5. Comments

Used to explain code.

&nbsp;

## Single-line

```sql
-- This is a comment
SELECT * FROM Employee;
```

&nbsp;

## Multi-line

```sql
/* This is
a multi-line comment */
SELECT * FROM Employee;
```

&nbsp;

&nbsp;

&nbsp;

# 6. Clauses

Parts of a query that perform specific tasks.

&nbsp;

## Examples

- WHERE
- GROUP BY
- HAVING
- ORDER BY

&nbsp;

## Example

```sql
SELECT *
FROM Employee
WHERE age > 30;
```

&nbsp;

&nbsp;

&nbsp;

# 7. Functions

Built-in operations.

&nbsp;

## Examples

- COUNT()
- SUM()
- AVG()
- COALESCE()

&nbsp;

## Example

```sql
SELECT AVG(Monthly_sal)
FROM Employee;
```

&nbsp;

&nbsp;

&nbsp;

# 8. Delimiters / Symbols

**Special characters** in SQL syntax.

&nbsp;

## Examples

- `;` → ends statement
- `()` → function parameters
- `,` → separates columns

&nbsp;

## Example

```sql
SELECT first_name, age
FROM Employee;
```

Here `,` and `;` are the delimiters.

These are the fundamental building blocks of SQL syntax.

&nbsp;

&nbsp;

&nbsp;

# 9. Expressions

Combination of columns, literals, operators, or functions that return a value.

```sql
SELECT Monthly_sal * 12 AS yearly_salary
FROM Employee;
```

Here `Monthly_sal * 12` is expression

&nbsp;

&nbsp;

&nbsp;

# 10. Constraints

Rules applied to table columns.

&nbsp;

## Examples

- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- CHECK
- DEFAULT

&nbsp;

## Example

```sql
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
```

&nbsp;

&nbsp;

&nbsp;

# 11. Data Types

Define what kind of data a column can store.

&nbsp;

## Examples

- INT
- VARCHAR
- DATE
- BOOLEAN
- DECIMAL

&nbsp;

## Example

```sql
age INT
```

&nbsp;

&nbsp;

&nbsp;

# 12. Aliases

Temporary names for columns/tables.

&nbsp;

## Example

```sql

SELECT first_name AS name
FROM Employee;
```

&nbsp;

&nbsp;

&nbsp;

# 13. Joins

Used to **combine data** from multiple tables.

## Examples

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN

&nbsp;

## Example

```sql
SELECT *
FROM Employee e
JOIN Department d
ON e.id = d.emp_id;
```

&nbsp;

&nbsp;

&nbsp;

# 14) Subqueries

Query inside another query.

```sql
SELECT *
FROM Employee
WHERE Monthly_sal > (
    SELECT AVG(Monthly_sal) FROM Employee
);
```

&nbsp;

&nbsp;

&nbsp;

# 15. Views

Virtual tables created from queries.

```sql
CREATE VIEW emp_view AS
SELECT first_name, Monthly_sal
FROM Employee;
```

&nbsp;

&nbsp;

&nbsp;

# 16. Indexes

Improve query performance.

```sql
CREATE INDEX idx_emp_name
ON Employee(first_name);
```

&nbsp;

&nbsp;

&nbsp;

# 17. Transactions

Group of SQL operations.

```sql
BEGIN;
UPDATE Employee SET Monthly_sal = 50000;
COMMIT;
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
