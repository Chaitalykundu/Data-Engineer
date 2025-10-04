# Overview

- [Overview](#overview)
- [Definition](#definition)
- [Syntax](#syntax)
- [Examples](#examples)
  - [1. Sort ascending (default)](#1-sort-ascending-default)
  - [2. Sort descending](#2-sort-descending)
  - [3. Sort by multiple columns](#3-sort-by-multiple-columns)
  - [4. Sort by column alias](#4-sort-by-column-alias)
  - [5. Sort by column position (not recommended, but allowed)](#5-sort-by-column-position-not-recommended-but-allowed)
  - [6. Sorting with NULL values](#6-sorting-with-null-values)
  - [7. Sort with expressions](#7-sort-with-expressions)
- [Key Points](#key-points)

&nbsp;

&nbsp;

&nbsp;

# Definition

The `ORDER BY` clause is used to sort the result set of a query by one or more columns.

By default, it sorts in ascending (`ASC`) order, but you can also specify descending (`DESC`) order.

&nbsp;

&nbsp;

# Syntax

```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;
```

&nbsp;

&nbsp;

# Examples

## 1. Sort ascending (default)

```sql
SELECT first_name, salary
FROM employees
ORDER BY salary;
```

👉 Salaries sorted from lowest to highest.

&nbsp;

&nbsp;

## 2. Sort descending

```sql
SELECT first_name, salary
FROM employees
ORDER BY salary DESC;
```

👉 Salaries sorted from highest to lowest.

&nbsp;

&nbsp;

## 3. Sort by multiple columns

```sql
SELECT first_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;
```

👉 First sorts employees by department name alphabetically,
then by salary (highest first) within each department.

&nbsp;

&nbsp;

## 4. Sort by column alias

```sql
SELECT first_name, salary * 12 AS annual_salary
FROM employees
ORDER BY annual_salary DESC;
```

👉 You can use calculated columns or aliases in ORDER BY.

&nbsp;

&nbsp;

## 5. Sort by column position (not recommended, but allowed)

```sql
SELECT first_name, salary
FROM employees
ORDER BY 2 DESC;
```

👉 Sorts by the second column (salary).

⚠️ Works in many SQL dialects, but less readable — better to use column names.

&nbsp;

&nbsp;

## 6. Sorting with NULL values

By default:

- In `ASC`, NULL values come first.
- In `DESC`, NULL values come last.

&nbsp;

You can control it:

```sql
SELECT first_name, manager_id
FROM employees
ORDER BY manager_id NULLS LAST;
```

&nbsp;

&nbsp;

## 7. Sort with expressions

```sql
SELECT first_name, last_name, LENGTH(first_name) AS name_length
FROM employees
ORDER BY LENGTH(first_name) DESC;
```

👉 Sorts by the length of the first name.

&nbsp;

&nbsp;

# Key Points

- `ORDER BY` happens after `SELECT` (you can use aliases).
- You can sort by one or multiple columns.
- You can sort by expressions or functions.
- Use `ASC` (default) or `DESC`.
- Large datasets + sorting → can be slow (use indexes for performance).

&nbsp;

&nbsp;

&nbsp;

&nbsp;
