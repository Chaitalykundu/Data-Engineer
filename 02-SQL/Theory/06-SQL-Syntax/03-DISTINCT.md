# Overview

- [Overview](#overview)
- [Definition](#definition)
- [Syntax](#syntax)
- [Examples](#examples)
  - [1. Single column](#1-single-column)
  - [2. Multiple columns](#2-multiple-columns)
  - [3. Using DISTINCT with expressions](#3-using-distinct-with-expressions)
  - [4. Counting distinct values](#4-counting-distinct-values)
  - [5. DISTINCT + ORDER BY](#5-distinct--order-by)
  - [6. DISTINCT with NULLs](#6-distinct-with-nulls)
- [Key Points](#key-points)
- [Performance Tip](#performance-tip)

&nbsp;

&nbsp;

&nbsp;

# Definition

The `DISTINCT` keyword is used to remove duplicate rows from the result set of a `SELECT` query.
It ensures that each row returned is unique.

&nbsp;

&nbsp;

# Syntax

```SQL
SELECT DISTINCT column1, column2, ...
FROM table_name;
```

&nbsp;

&nbsp;

# Examples

## 1. Single column

```sql
SELECT DISTINCT department
FROM employees;
```

👉 Returns each department name only once, even if many employees are in the same department.

&nbsp;

&nbsp;

## 2. Multiple columns

```sql
SELECT DISTINCT department, job_title
FROM employees;
```

👉 Returns unique (**department**, **job_title**) combinations.
If two rows have the same department and job title, duplicates are removed.

&nbsp;

&nbsp;

## 3. Using DISTINCT with expressions

```sql
SELECT DISTINCT UPPER(department)
FROM employees;
```

👉 Returns unique department names (case-insensitive).

&nbsp;

&nbsp;

## 4. Counting distinct values

```sql
SELECT COUNT(DISTINCT department)
FROM employees;
```

👉 Returns how many unique departments exist.

&nbsp;

&nbsp;

## 5. DISTINCT + ORDER BY

You can combine both:

```sql
SELECT DISTINCT department
FROM employees
ORDER BY department ASC;
```

👉 Returns unique departments sorted alphabetically.

&nbsp;

&nbsp;

## 6. DISTINCT with NULLs

`DISTINCT` treats **NULL** as a value — so all NULLs are considered the same.

```sql
SELECT DISTINCT manager_id
FROM employees;
```

👉 If multiple employees have `NULL` **manager_id**, only one **NULL** will appear.

&nbsp;

&nbsp;

# Key Points

- ✅ Removes duplicates from the selected columns
- ✅ Applies to the entire row (all columns in the `SELECT` list)
- ✅ Can be used with functions like `COUNT()` → `COUNT(DISTINCT col)`
- ✅ `DISTINCT` is processed after **WHERE but before ORDER BY**

&nbsp;

&nbsp;

# Performance Tip

Using `DISTINCT` can be expensive on large datasets —

- since the database must sort or hash the results to find duplicates.
- When possible, filter earlier or use `GROUP BY` if you need aggregations too.

&nbsp;

&nbsp;
