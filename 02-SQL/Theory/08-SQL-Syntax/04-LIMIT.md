# Overview

- [Overview](#overview)
- [Definition](#definition)
- [Syntax](#syntax)
- [Examples](#examples)
  - [1. Get first 5 rows](#1-get-first-5-rows)
  - [2. Limit with ORDER BY](#2-limit-with-order-by)
    - [Note](#note)
  - [3. LIMIT with OFFSET (for pagination)](#3-limit-with-offset-for-pagination)
  - [4. Alternative syntax (MySQL style)](#4-alternative-syntax-mysql-style)
  - [5. LIMIT with DISTINCT](#5-limit-with-distinct)
- [Supported Databases](#supported-databases)
- [Key Takeaways](#key-takeaways)

&nbsp;

&nbsp;

&nbsp;

# Definition

The `LIMIT` clause is used to restrict the number of rows returned by a `SELECT` query.

It will be always used at the very end of the query.

&nbsp;

It’s commonly used when:

- You only want to preview a few rows (like top 5 results)
- You’re paginating query results
- You want faster testing on large tables

&nbsp;

&nbsp;

# Syntax

```sql
SELECT column1, column2, ...
FROM table_name
LIMIT number;
```

&nbsp;

&nbsp;

# Examples

## 1. Get first 5 rows

```sql
SELECT *
FROM employees
LIMIT 5;
```

👉 Returns only the first 5 rows of the employees table.

&nbsp;

&nbsp;

## 2. Limit with ORDER BY

```sql
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;
```

👉 Returns the top 3 highest-paid employees.

&nbsp;

### Note

💡 Always use `ORDER BY` with `LIMIT` if you want consistent results —
otherwise, databases may return any 3 random rows.

&nbsp;

&nbsp;

## 3. LIMIT with OFFSET (for pagination)

Some databases (like MySQL, PostgreSQL) allow:

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 5 OFFSET 10;
```

👉 Skips the first 10 rows and then shows the next 5 rows (i.e., rows 11–15).

&nbsp;

&nbsp;

## 4. Alternative syntax (MySQL style)

```sql
SELECT *
FROM employees
LIMIT 10, 5;
```

👉 Equivalent to LIMIT 5 OFFSET 10.

&nbsp;

&nbsp;

## 5. LIMIT with DISTINCT

```sql
SELECT DISTINCT department
FROM employees
LIMIT 3;
```

👉 Returns 3 unique department names.

&nbsp;

&nbsp;

# Supported Databases

| Database                  | Keyword Used                     |
| ------------------------- | -------------------------------- |
| MySQL, SQLite, PostgreSQL | ✅ `LIMIT`                       |
| Oracle                    | ❌ Use `FETCH FIRST n ROWS ONLY` |
| SQL Server                | ❌ Use `TOP n`                   |

&nbsp;

&nbsp;

# Key Takeaways

- ✅ Controls how many rows you see
- ✅ Usually placed at the end of the query
- ✅ Works great with ORDER BY for top/bottom results
- ✅ Useful for testing and pagination
