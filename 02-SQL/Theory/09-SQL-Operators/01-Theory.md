# Overview

- [Overview](#overview)
- [Definition](#definition)
- [Types of operators](#types-of-operators)
- [1. Arithmetic Operators](#1-arithmetic-operators)
  - [Example](#example)
- [2. Comparison (Relational) Operators](#2-comparison-relational-operators)
  - [Example](#example-1)
- [3. Logical Operators](#3-logical-operators)
  - [Example](#example-2)
- [4. Bitwise Operators (DBMS-dependent)](#4-bitwise-operators-dbms-dependent)
- [5. Set Operators](#5-set-operators)
  - [Example](#example-3)
- [6. Other Useful Operators](#6-other-useful-operators)
- [Summary Table](#summary-table)

&nbsp;

&nbsp;

&nbsp;

# Definition

SQL operators are **symbols or keywords used to perform operations** on data within a database. They are essential for constructing queries that filter, compare, and manipulate data.

&nbsp;

&nbsp;

# Types of operators

We can group them into **6** main categories

1. Arithmetic Operators
2. Comparison (Relational) Operators
3. Logical Operators
4. Bitwise Operators (DBMS-dependent)
5. Set Operators
6. Other Useful Operators

&nbsp;

&nbsp;

&nbsp;

# 1. Arithmetic Operators

Used to perform mathematical operations on numeric data.

&nbsp;

| Operator | Description         | Example          | Result |
| -------- | ------------------- | ---------------- | ------ |
| `+`      | Addition            | `SELECT 10 + 5;` | 15     |
| `-`      | Subtraction         | `SELECT 10 - 5;` | 5      |
| `*`      | Multiplication      | `SELECT 10 * 5;` | 50     |
| `/`      | Division            | `SELECT 10 / 5;` | 2      |
| `%`      | Modulus (remainder) | `SELECT 10 % 3;` | 1      |

&nbsp;

## Example

```sql
SELECT product_name, price, price * 0.1 AS discount
FROM products;
```

&nbsp;

&nbsp;

# 2. Comparison (Relational) Operators

Used in `WHERE` clauses to compare two values.

&nbsp;

| Operator     | Description              | Example           | Result              |
| ------------ | ------------------------ | ----------------- | ------------------- |
| `=`          | Equal to                 | `salary = 50000`  | Matches exact value |
| `!=` or `<>` | Not equal to             | `salary <> 50000` | Excludes value      |
| `>`          | Greater than             | `salary > 50000`  | Higher salaries     |
| `<`          | Less than                | `salary < 50000`  | Lower salaries      |
| `>=`         | Greater than or equal to | `salary >= 50000` |                     |
| `<=`         | Less than or equal to    | `salary <= 50000` |                     |

&nbsp;

## Example

```sql
SELECT * FROM employees WHERE salary >= 60000;
```

&nbsp;

&nbsp;

# 3. Logical Operators

Used to combine multiple conditions in a `WHERE` clause.

&nbsp;

| Operator  | Description                              | Example                                |
| --------- | ---------------------------------------- | -------------------------------------- |
| `AND`     | Returns true if both conditions are true | `salary > 50000 AND department = 'HR'` |
| `OR`      | Returns true if any condition is true    | `salary > 50000 OR department = 'HR'`  |
| `NOT`     | Negates a condition                      | `NOT department = 'HR'`                |
| `IN`      | Checks if value is in a list             | `department IN ('HR','Finance','IT')`  |
| `BETWEEN` | Checks if value is between two values    | `salary BETWEEN 40000 AND 80000`       |
| `LIKE`    | Pattern matching with wildcards          | `name LIKE 'A%'`                       |
| `IS NULL` | Checks for NULL values                   | `commission IS NULL`                   |

&nbsp;

## Example

```sql
SELECT * FROM employees
WHERE (department = 'IT' OR department = 'Finance')
  AND salary BETWEEN 40000 AND 90000;
```

&nbsp;

&nbsp;

# 4. Bitwise Operators (DBMS-dependent)

Operate on bits (rarely used in SQL day-to-day).

&nbsp;

| Operator | Description |            |
| -------- | ----------- | ---------- |
| `&`      | Bitwise AND |            |
| `        | `           | Bitwise OR |
| `^`      | Bitwise XOR |            |
| `~`      | Bitwise NOT |            |
| `<<`     | Left shift  |            |
| `>>`     | Right shift |            |

&nbsp;

&nbsp;

# 5. Set Operators

Used to combine results of two or more `SELECT` queries.

&nbsp;

| Operator            | Description                                    |
| ------------------- | ---------------------------------------------- |
| `UNION`             | Combines results, removes duplicates           |
| `UNION ALL`         | Combines results, keeps duplicates             |
| `INTERSECT`         | Returns common records                         |
| `EXCEPT` or `MINUS` | Returns records from first query not in second |

&nbsp;

## Example

```sql
SELECT city FROM customers
UNION
SELECT city FROM suppliers;
```

&nbsp;

&nbsp;

# 6. Other Useful Operators

| Operator | Description                           | Example                                                 |
| -------- | ------------------------------------- | ------------------------------------------------------- |
| `ALL`    | Compare with all values in a subquery | `salary > ALL(SELECT salary FROM interns)`              |
| `ANY`    | Compare with any value in a subquery  | `salary > ANY(SELECT salary FROM interns)`              |
| `EXISTS` | Checks if subquery returns any row    | `EXISTS(SELECT * FROM orders WHERE customer_id = c.id)` |

&nbsp;

&nbsp;

&nbsp;

# Summary Table

| Category         | Common Operators                                       |     |
| ---------------- | ------------------------------------------------------ | --- |
| Arithmetic       | `+`, `-`, `*`, `/`, `%`                                |     |
| Comparison       | `=`, `!=`, `<`, `>`, `<=`, `>=`                        |     |
| Logical          | `AND`, `OR`, `NOT`, `IN`, `BETWEEN`, `LIKE`, `IS NULL` |     |
| Set              | `UNION`, `UNION ALL`, `INTERSECT`, `EXCEPT`            |     |
| Bitwise          | &, \`                                                  |
| Subquery-related | `ALL`, `ANY`, `EXISTS`                                 |     |

&nbsp;
