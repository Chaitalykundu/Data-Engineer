# Overview

- [Overview](#overview)
- [Definition](#definition)
- [Syntax](#syntax)
- [Examples](#examples)
  - [Example 1: Skip First 3 Rows](#example-1-skip-first-3-rows)
    - [Explanation](#explanation)
  - [Example 2: Second Highest Salary](#example-2-second-highest-salary)
  - [Example 3: Third Highest Salary](#example-3-third-highest-salary)
  - [Example 4: Pagination](#example-4-pagination)
- [OFFSET Without ORDER BY](#offset-without-order-by)
- [Best Practices](#best-practices)
- [OFFSET vs LIMIT](#offset-vs-limit)
- [Real-World Use Cases](#real-world-use-cases)
- [Interview Questions](#interview-questions)
- [Answer](#answer)
  - [1. What is OFFSET used for?](#1-what-is-offset-used-for)
  - [2. Can OFFSET be used without LIMIT?](#2-can-offset-be-used-without-limit)
  - [3. What executes first: OFFSET or LIMIT?](#3-what-executes-first-offset-or-limit)
  - [4. How do you retrieve records for page 5 with 20 records per page?](#4-how-do-you-retrieve-records-for-page-5-with-20-records-per-page)
  - [5. Is OFFSET efficient for very large tables?](#5-is-offset-efficient-for-very-large-tables)
  - [6. How do you retrieve the second-highest salary using LIMIT?](#6-how-do-you-retrieve-the-second-highest-salary-using-limit)

&nbsp;

&nbsp;

&nbsp;

# Definition

The `OFFSET` clause is used to skip a specified number of rows before returning the remaining rows.

&nbsp;

It is commonly used with `LIMIT` for pagination.

&nbsp;

&nbsp;

# Syntax

```sql
SELECT column_name(s)
FROM table_name
ORDER BY column_name
LIMIT number_of_rows
OFFSET number_of_rows_to_skip;
```

&nbsp;

&nbsp;

# Examples

## Example 1: Skip First 3 Rows

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 5
OFFSET 3;
```

&nbsp;

### Explanation

- Skip the first 3 rows
- Return the next 5 rows

&nbsp;

&nbsp;

## Example 2: Second Highest Salary

```sql
SELECT *
FROM employees
ORDER BY employee_id DESC
LIMIT 1
OFFSET 1;
```

Skip the 1st row and return the next one

&nbsp;

&nbsp;

## Example 3: Third Highest Salary

```sql
SELECT employee_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1
OFFSET 2;
```

&nbsp;

&nbsp;

## Example 4: Pagination

Suppose your website displays 10 employees per page.

Page 1

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 10 OFFSET 0;
```

Returns rows 1–10

&nbsp;

Page 2

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 10 OFFSET 10;
```

Returns rows 11–20

&nbsp;

Page 3

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 10 OFFSET 20;
```

Returns rows 21–30

&nbsp;

&nbsp;

# OFFSET Without ORDER BY

```sql
SELECT *
FROM employees
LIMIT 5 OFFSET 5;
```

This is valid SQL, but not recommended because the row order is not guaranteed. Without ORDER BY, the rows returned after the offset can change between executions.

&nbsp;

&nbsp;

# Best Practices

- Always use `ORDER BY` with `OFFSET` to ensure consistent results.
- Use the pagination formula `OFFSET = (Page Number - 1) × Page Size`.
- Avoid very large `OFFSET` values on huge tables; consider keyset pagination for better performance.
- Use `OFFSET` with `LIMIT` for user interfaces that display paginated results.

&nbsp;

&nbsp;

# OFFSET vs LIMIT

| LIMIT                             | OFFSET                          |
| --------------------------------- | ------------------------------- |
| Specifies how many rows to return | Specifies how many rows to skip |
| Returns rows                      | Skips rows                      |
| Used with or without OFFSET       | Usually used with LIMIT         |

&nbsp;

&nbsp;

# Real-World Use Cases

| Scenario              | Example                                                       |
| --------------------- | ------------------------------------------------------------- |
| Pagination            | `LIMIT 20 OFFSET 40`                                          |
| Second highest salary | `LIMIT 1 OFFSET 1`                                            |
| Third latest order    | `ORDER BY order_date DESC LIMIT 1 OFFSET 2`                   |
| Batch processing      | Process records in chunks of 1000 using `LIMIT 1000 OFFSET n` |
| Dashboard pages       | Show records page by page                                     |

&nbsp;

&nbsp;

&nbsp;

# Interview Questions

1. What is OFFSET used for?
2. Can OFFSET be used without LIMIT?
3. What executes first: OFFSET or LIMIT?
4. How do you retrieve records for page 5 with 20 records per page?
5. Is OFFSET efficient for very large tables?
6. How do you retrieve the second-highest salary using LIMIT?

&nbsp;

&nbsp;

&nbsp;

# Answer

## 1. What is OFFSET used for?

It skips a specified number of rows before returning the result set.

&nbsp;

## 2. Can OFFSET be used without LIMIT?

It depends on the database.

- PostgreSQL: ✅ Yes
- Snowflake: ✅ Yes
- MySQL: Typically used together with LIMIT

Example (Snowflake/PostgreSQL):

```sql
SELECT *
FROM employees
ORDER BY employee_id
OFFSET 5;
```

&nbsp;

## 3. What executes first: OFFSET or LIMIT?

After filtering and sorting:

- ORDER BY
- OFFSET
- LIMIT

&nbsp;

## 4. How do you retrieve records for page 5 with 20 records per page?

```
OFFSET = (5 - 1) × 20 = 80
```

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 20 OFFSET 80;
```

&nbsp;

## 5. Is OFFSET efficient for very large tables?

Not always.

If you use:

```sql
LIMIT 20 OFFSET 1000000;
```

the database may still need to scan or skip one million rows before returning the next 20. This can become slow.

For large datasets, many systems prefer keyset (cursor-based) pagination, for example:

```sql
SELECT *
FROM employees
WHERE employee_id > 1000000
ORDER BY employee_id
LIMIT 20;
```

&nbsp;

## 6. How do you retrieve the second-highest salary using LIMIT?

```sql
SELECT salary from employees
order by salary DESC
limit 1 offset 1;
```

&nbsp;

&nbsp;
