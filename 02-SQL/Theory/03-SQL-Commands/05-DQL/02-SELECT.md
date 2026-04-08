# Overview

- [Overview](#overview)
- [Select Statement](#select-statement)
- [What is SELECT](#what-is-select)
- [Syntax](#syntax)
  - [Retrieve all data](#retrieve-all-data)
  - [Select specific columns](#select-specific-columns)
  - [Remove duplicates with DISTINCT](#remove-duplicates-with-distinct)
  - [Key Clauses with SELECT](#key-clauses-with-select)
- [Example](#example)
  - [Select all columns](#select-all-columns)
  - [Select specific columns](#select-specific-columns-1)
  - [Remove duplicates with DISTINCT](#remove-duplicates-with-distinct-1)
  - [Use expressions in SELECT](#use-expressions-in-select)
  - [Combine text with CONCAT](#combine-text-with-concat)
- [In short](#in-short)

&nbsp;

&nbsp;

&nbsp;

# Select Statement

`SELECT` command is used to retrieve data from a database table. It belongs to DQL (Data Query Language).

&nbsp;

&nbsp;

# What is SELECT

`SELECT` is used to:

- Fetch data from one or more tables
- Filter, sort, and group results
- Perform calculations on data

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

## Remove duplicates with DISTINCT

```sql
SELECT DISTINCT column_name
FROM table_name;
```

👉 Returns only unique values.

&nbsp;

## Key Clauses with SELECT

A complete `SELECT` query can include:

```sql
SELECT column_list
FROM table_name
WHERE condition
GROUP BY column
HAVING condition
ORDER BY column;
```

&nbsp;

&nbsp;

# Example

## Select all columns

```sql
SELECT * FROM employees;
```

<img src="../../assets/Select/select-all.png">

&nbsp;

👉 Returns all rows and columns from the **employees** table.

&nbsp;
&nbsp;

&nbsp;

## Select specific columns

```sql
SELECT name, department
FROM employees;
```

<img src="../../assets/Select/select-multiple-columns.png">

&nbsp;

👉 Only shows name and department.

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
