# Overview

- [Overview](#overview)
- [Important Notes](#important-notes)
- [Definition](#definition)
- [Syntax](#syntax)
- [Examples](#examples)
  - [1. Sort ascending (default)](#1-sort-ascending-default)
  - [2. Sort descending](#2-sort-descending)
  - [3. ORDER BY a Text Column](#3-order-by-a-text-column)
  - [4. Sort by multiple columns](#4-sort-by-multiple-columns)
  - [5. ORDER BY Date](#5-order-by-date)
  - [6. ORDER BY Using Column Number](#6-order-by-using-column-number)
  - [7. Sort by column alias](#7-sort-by-column-alias)
  - [8. ORDER BY with LIMIT](#8-order-by-with-limit)
  - [8. Sorting with NULL values](#8-sorting-with-null-values)
  - [9. Sort with expressions](#9-sort-with-expressions)
- [Key Points](#key-points)
- [Best Practices](#best-practices)
- [Interview Questions](#interview-questions)
- [Answers](#answers)
  - [4. Can `ORDER BY` use a column not in the SELECT list?](#4-can-order-by-use-a-column-not-in-the-select-list)
  - [5. Does `ORDER BY` consider NULL](#5-does-order-by-consider-null)
  - [7. What is the difference between ORDER BY and GROUP BY?](#7-what-is-the-difference-between-order-by-and-group-by)

&nbsp;

&nbsp;

&nbsp;

# Important Notes

- `ORDER BY department ASC, salary DESC;` here First sorts by **department** name alphabetically,
  then by **salary** (highest first) within each department.

- In `ASC`, NULL values come first and In `DESC`, NULL values come last.

&nbsp;

&nbsp;

&nbsp;

# Definition

The `ORDER BY` clause is used to **sort the result set** returned by a query.

Without `ORDER BY`, SQL does not guarantee the order of the rows.

By default, it sorts in ascending (`ASC`) order, but we can also specify descending (`DESC`) order.

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

## 3. ORDER BY a Text Column

```sql
SELECT *
FROM employee
ORDER BY name;
```

👉 Sorts employees name alphabetically

&nbsp;

&nbsp;

## 4. Sort by multiple columns

```sql
SELECT first_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;
```

👉 First sorts employees by department name alphabetically (A to Z), then by salary (highest first) within each department.

&nbsp;

&nbsp;

## 5. ORDER BY Date

```sql
SELECT *
FROM orders
ORDER BY order_date DESC;
```

👉 Returns the newest orders first.

&nbsp;

&nbsp;

## 6. ORDER BY Using Column Number

```sql
SELECT emp_id, name, salary
FROM employee
ORDER BY 3 DESC;
```

👉 Suppose:

- Column 1 = emp_id
- Column 2 = name
- Column 3 = salary

So it sorts by salary in descending order.

This works, but using column names is preferred because it's clearer and less error-prone.

&nbsp;

&nbsp;

## 7. Sort by column alias

```sql
SELECT first_name, salary * 12 AS annual_salary
FROM employees
ORDER BY annual_salary DESC;
```

👉 You can use calculated columns or aliases in ORDER BY.

&nbsp;

&nbsp;

## 8. ORDER BY with LIMIT

Show the top 3 highest-paid employees.

```sql
SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 3;
```

&nbsp;

&nbsp;

## 8. Sorting with NULL values

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

👉 When sorting, place all rows where manager_id is NULL at the end of the result.

&nbsp;

&nbsp;

## 9. Sort with expressions

```sql
SELECT first_name, last_name, LENGTH(first_name) AS name_length
FROM employees
ORDER BY LENGTH(first_name) DESC;
```

👉 Sorts by the length of the first name.

&nbsp;

```sql
SELECT *
FROM employee
ORDER BY salary * 12 DESC;
```

&nbsp;

&nbsp;

# Key Points

- `ORDER BY` sorts the result set.
- `ORDER BY` happens after `SELECT` (you can use aliases).
- `ASC` is the default sort order.
- `NULLS LAST` places NULL values after all non-NULL values.
- `NULLS FIRST` places NULL values before all non-NULL values.
- `NULLS FIRST` and NULLS LAST are supported in databases like Snowflake, Oracle, and PostgreSQL. Some databases, such as SQL Server, do not support this syntax directly and handle NULL ordering differently.
- You can sort by one or multiple columns.
- You can sort by expressions or functions.
- Large datasets + sorting → can be slow (use indexes for performance).

&nbsp;

&nbsp;

# Best Practices

- Use ORDER BY whenever the order of results matters.
- Specify ASC explicitly if it improves readability, even though it's optional.
- Combine ORDER BY with LIMIT for Top-N or Bottom-N queries.
- When dealing with NULL values in databases that support it, use NULLS FIRST or NULLS LAST to make the ordering explicit.

&nbsp;

&nbsp;

&nbsp;

# Interview Questions

1. Why do we use `ORDER BY`
2. Can you sort by multiple columns
3. If we use `ORDER BY department ASC, salary DESC;` what will be the execution flow
4. Can `ORDER BY` use a column not in the SELECT list?
5. Does `ORDER BY` consider NULL
6. What if we use `NULLS FIRST`?

   ```sql
   SELECT first_name, manager_id
   FROM employees
   ORDER BY manager_id NULLS FIRST;
   ```

7. What is the difference between ORDER BY and GROUP BY?
   &nbsp;

&nbsp;

# Answers

## 4. Can `ORDER BY` use a column not in the SELECT list?

Yes

```sql
SELECT name
FROM employee
ORDER BY salary DESC;
```

&nbsp;

&nbsp;

## 5. Does `ORDER BY` consider NULL

Yes.
The default position of NULL values depends on the database. Many databases also support:

```sql
ORDER BY commission NULLS FIRST;
```

or

```sql
ORDER BY commission NULLS LAST;
```

&nbsp;

&nbsp;

## 7. What is the difference between ORDER BY and GROUP BY?

| ORDER BY                                     | GROUP BY                               |
| -------------------------------------------- | -------------------------------------- |
| Sorts rows                                   | Groups rows                            |
| Does not perform aggregation                 | Commonly used with aggregate functions |
| Used for displaying data in a specific order | Used to summarize data                 |

&nbsp;

&nbsp;
