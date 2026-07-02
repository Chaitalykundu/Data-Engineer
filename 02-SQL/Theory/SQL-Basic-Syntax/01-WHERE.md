# Overview

- [Overview](#overview)
- [Summary](#summary)
- [Definition](#definition)
- [Syntax](#syntax)
- [Examples](#examples)
  - [1. Simple comparison](#1-simple-comparison)
  - [2. Filter with **Comparison** operators like =, \< , \>, !=, \<=, \>=](#2-filter-with-comparison-operators-like-------)
  - [3. Multiple conditions with **AND** / **OR**](#3-multiple-conditions-with-and--or)
  - [3. Range check with **BETWEEN**](#3-range-check-with-between)
  - [4. Matching a set with IN](#4-matching-a-set-with-in)
  - [5. Pattern matching with `LIKE`](#5-pattern-matching-with-like)
  - [6. Checking for NULL](#6-checking-for-null)
  - [7. Negation](#7-negation)
  - [8. With dates](#8-with-dates)
- [Key Points to Remember](#key-points-to-remember)
- [Operators - used in the WHERE clause](#operators---used-in-the-where-clause)
- [Execution Order Note](#execution-order-note)
- [`OR` and `AND` Operator Precedence](#or-and-and-operator-precedence)

&nbsp;

&nbsp;

&nbsp;

# Summary

- The `WHERE` clause is used to filter rows from a table based on specified conditions.

- Use `WHERE` for filtering rows; use `HAVING` for filtering groups

- ❌ Cannot use aggregate functions (SUM, AVG) in WHERE → use HAVING instead
  Cannot reference SELECT column aliases in WHERE
- AND has higher precedence than OR → use parentheses for clarity
- For NULL checks, use IS NULL, not = NULL

&nbsp;

&nbsp;

# Definition

The `WHERE` clause is used to **filter rows** from a table before they are returned by the query.

It comes after `FROM` (and `JOIN`s) but before `GROUP BY`, `HAVING`, and `SELECT` output in SQL’s logical execution order.

The `WHERE` clause is not only used in `SELECT` statement, but it is also used in `UPDATE`, `DELETE` statement, etc., which we will learn in subsequent chapters

&nbsp;

- Without WHERE → SQL returns all records.
- With WHERE → SQL returns only matching records.

&nbsp;

&nbsp;

# Syntax

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

&nbsp;

&nbsp;

# Examples

## 1. Simple comparison

```sql
SELECT first_name, salary
FROM employees
WHERE salary > 50000;
```

👉 Returns only employees with salary greater than 50,000.

&nbsp;

&nbsp;

## 2. Filter with **Comparison** operators like =, < , >, !=, <=, >=

```sql
SELECT *
FROM employees
WHERE city='Kolkata' and salary >50000;
```

&nbsp;

&nbsp;

## 3. Multiple conditions with **AND** / **OR**

```sql
SELECT *
FROM employees
WHERE department = 'HR' AND salary >= 40000;
```

&nbsp;

```sql
SELECT *
FROM employees
WHERE department = 'HR' OR department = 'Finance';
```

&nbsp;

&nbsp;

## 3. Range check with **BETWEEN**

```sql
SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 60000;
```

👉 Includes salaries between 30000 and 60000.

&nbsp;

&nbsp;

## 4. Matching a set with IN

```sql
SELECT *
FROM employees
WHERE department IN ('HR', 'Finance', 'IT');
```

&nbsp;

&nbsp;

## 5. Pattern matching with `LIKE`

```sql
-- Names starting with 'A'
SELECT *
FROM employees
WHERE first_name LIKE 'A%';

-- Names ending with 'n'
SELECT *
FROM employees
WHERE first_name LIKE '%n';

-- Names containing 'ai'
SELECT *
FROM employees
WHERE first_name LIKE '%ai%';
```

👉 % = any sequence of characters, \_ = exactly one character.

&nbsp;

&nbsp;

## 6. Checking for NULL

```sql
SELECT *
FROM employees
WHERE manager_id IS NULL;
```

👉 Use IS NULL (not = NULL, which won’t work).

&nbsp;

&nbsp;

## 7. Negation

```sql
SELECT *
FROM employees
WHERE department NOT IN ('HR', 'Finance');
```

&nbsp;

&nbsp;

## 8. With dates

```sql
SELECT *
FROM employees
WHERE hire_date >= '2023-01-01';
```

&nbsp;

&nbsp;

&nbsp;

# Key Points to Remember

- `WHERE` filters rows (before grouping).
- `HAVING` filters groups (after aggregation).
- You cannot use aggregate functions (like `SUM()`, `AVG()`) inside `WHERE`.
  - ✅ Use `HAVING` instead.
- `WHERE` executes before `SELECT`, so you usually can’t use column aliases from `SELECT`.

&nbsp;

&nbsp;

&nbsp;

# Operators - used in the WHERE clause

The following operators can be used in the WHERE clause:

| Operator     | Description                                      |
| ------------ | ------------------------------------------------ |
| =            | Equal                                            |
| `!=` or `<>` | Not Equal                                        |
| >            | Greater than                                     |
| <            | Less than                                        |
| >=           | Greater than or equal                            |
| <=           | Less than or equal                               |
| BETWEEN      | Between a certain range                          |
| LIKE         | Search for a pattern                             |
| IN           | To specify multiple possible values for a column |
| `AND`        | All conditions must be true                      |
| `OR`         | At least one condition must be true              |
| `NOT`        | Negates a condition                              |

&nbsp;

&nbsp;

&nbsp;

# Execution Order Note

In SQL’s internal execution order:

FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT

&nbsp;

&nbsp;

&nbsp;

# `OR` and `AND` Operator Precedence

SQL executes conditions in this order by default:

- `AND` first
- `OR` next

So always use **parentheses** `()` when combining them for clarity.
