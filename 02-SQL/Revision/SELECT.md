# Content

- [Content](#content)
- [SQL SELECT – Revision Points](#sql-select--revision-points)
- [Basic syntax](#basic-syntax)
  - [Select all columns](#select-all-columns)
  - [Select specific columns](#select-specific-columns)
  - [Rename columns using AS](#rename-columns-using-as)
  - [Perform calculations](#perform-calculations)
  - [Use expressions](#use-expressions)
  - [Return constant values:](#return-constant-values)
  - [Remove duplicate rows using DISTINCT:](#remove-duplicate-rows-using-distinct)
  - [Filter rows using WHERE:](#filter-rows-using-where)
  - [Sort results using ORDER BY:](#sort-results-using-order-by)
  - [Limit returned rows:](#limit-returned-rows)
  - [Skip rows using OFFSET:](#skip-rows-using-offset)
  - [Retrieve data from multiple tables using JOIN:](#retrieve-data-from-multiple-tables-using-join)
- [Execution Order of a SELECT Query](#execution-order-of-a-select-query)
- [Common Interview Points](#common-interview-points)
- [Common Mistakes](#common-mistakes)

&nbsp;

&nbsp;

&nbsp;

# SQL SELECT – Revision Points

- `SELECT` is used to retrieve data from one or more tables.
- It is a DQL (Data Query Language) command.

&nbsp;

&nbsp;

# Basic syntax

```sql
SELECT column1, column2
FROM table_name;
```

&nbsp;

## Select all columns

```sql
SELECT * FROM employees;
```

&nbsp;

## Select specific columns

```sql
SELECT employee_id, employee_name
FROM employees;
```

&nbsp;

## Rename columns using AS

```sql
SELECT employee_name AS Name,
       salary AS Monthly_Salary
FROM employees;
```

&nbsp;

## Perform calculations

```sql
SELECT salary * 12 AS Annual_Salary
FROM employees;
```

&nbsp;

## Use expressions

```sql
SELECT first_name || ' ' || last_name AS Full_Name
FROM employees;
```

(Use `CONCAT()` in MySQL.)

&nbsp;

## Return constant values

```sql
SELECT CURRENT_DATE;
SELECT 'Hello';
SELECT 100;
```

&nbsp;

## Remove duplicate rows using DISTINCT

```sql
SELECT DISTINCT department_id
FROM employees;
```

&nbsp;

## Filter rows using WHERE

```sql
SELECT *
FROM employees
WHERE salary > 50000;
```

&nbsp;

## Sort results using ORDER BY

```sql
SELECT *
FROM employees
ORDER BY salary DESC;
```

&nbsp;

## Limit returned rows

```sql
SELECT *
FROM employees
LIMIT 10;
```

&nbsp;

## Skip rows using OFFSET

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 10 OFFSET 20;
```

&nbsp;

## Retrieve data from multiple tables using JOIN

```sql
SELECT e.employee_name, d.department_name
FROM employees e
JOIN departments d
  ON e.department_id = d.department_id;
```

&nbsp;

&nbsp;

# Execution Order of a SELECT Query

- FROM
- JOIN
- WHERE
- GROUP BY
- HAVING
- SELECT
- DISTINCT
- ORDER BY
- LIMIT / OFFSET

&nbsp;

&nbsp;

# Common Interview Points

- `SELECT *` is generally not recommended in production because it retrieves unnecessary columns, increases I/O, and may prevent some query optimizations.

- Always select only the required columns.

- `SELECT` does not modify data; it only reads data.

- `DISTINCT` removes duplicate rows from the selected columns.

- Column aliases (AS) change only the output name, not the actual column name.

- `WHERE` filters rows before data is returned.

- `ORDER BY` sorts the final result set.

- `LIMIT` restricts the number of rows returned.

- `OFFSET` is commonly used for pagination.

&nbsp;

&nbsp;

# Common Mistakes

- Omitting the `FROM` clause when selecting table data.

- Using `SELECT *` unnecessarily.

- Expecting results in insertion order without `ORDER BY`.

- Confusing `DISTINCT` with `GROUP BY`.

- Using aliases in the `WHERE` clause (most SQL databases do not allow this because `WHERE` is evaluated before `SELECT`).

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
