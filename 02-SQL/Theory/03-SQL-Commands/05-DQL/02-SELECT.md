# Overview

- [Overview](#overview)
- [Select Statement](#select-statement)
- [Syntax](#syntax)
  - [Retrieve all data](#retrieve-all-data)
  - [Select specific columns](#select-specific-columns)
- [Example](#example)
  - [Select all columns](#select-all-columns)
  - [Select specific columns](#select-specific-columns-1)
  - [Remove duplicates with DISTINCT](#remove-duplicates-with-distinct)
  - [Use expressions in SELECT](#use-expressions-in-select)
  - [Combine text with CONCAT](#combine-text-with-concat)
- [In short:](#in-short)

&nbsp;

&nbsp;

&nbsp;

# Select Statement

`SELECT` is the most important SQL statement.

It’s used to retrieve data from a database table.

&nbsp;

&nbsp;

# Syntax

## Retrieve all data

```sql
SELECT * FROM table_name;
```

&nbsp;

## Select specific columns

```sql
SELECT column1, column2, ...
FROM table_name;
```

&nbsp;

&nbsp;

# Example

## Select all columns

```sql
SELECT * FROM employees;
```

👉 Returns all rows and columns from the employees table.

&nbsp;

## Select specific columns

```sql
SELECT first_name, last_name, salary
FROM employees;
```

👉 Only shows first name, last name, and salary.

&nbsp;

&nbsp;

## Remove duplicates with DISTINCT

```sql
SELECT DISTINCT department
FROM employees;
```

👉 Returns only unique department names.

&nbsp;

&nbsp;

## Use expressions in SELECT

You can calculate values inside the query.

```sql
SELECT first_name, salary, salary * 12 AS annual_salary
FROM employees;
```

👉 Creates a new column annual_salary as salary × 12.

&nbsp;

&nbsp;

## Combine text with CONCAT

```sql
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;
```

👉 Combines first name and last name into full_name.

&nbsp;

&nbsp;

# In short

- `SELECT *` → everything
- `SELECT col1, col2` → specific columns
- `SELECT DISTINCT col` → unique values
- `SELECT col AS alias` → rename a column
- `SELECT expressions` → do calculations

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
