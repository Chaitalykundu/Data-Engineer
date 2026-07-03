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
- [Real-World Use Cases](#real-world-use-cases)
- [Interview Questions](#interview-questions)
- [Answer](#answer)
  - [2. Does LIMIT guarantee the same rows every time?](#2-does-limit-guarantee-the-same-rows-every-time)
  - [3. Which executes first: ORDER BY or LIMIT?](#3-which-executes-first-order-by-or-limit)
  - [4. Can LIMIT be used without ORDER BY?](#4-can-limit-be-used-without-order-by)
  - [5. Can LIMIT improve query performance?](#5-can-limit-improve-query-performance)
  - [6. How do you retrieve the second-highest salary using LIMIT?](#6-how-do-you-retrieve-the-second-highest-salary-using-limit)

&nbsp;

&nbsp;

&nbsp;

# Definition

The `LIMIT` clause is used to restrict the number of rows returned by a `SELECT` query.

Instead of returning all matching records, LIMIT returns only the specified number of rows.

It will be always used at the very end of the query.

&nbsp;

It’s commonly used when:

- Viewing sample data
- Retrieving Top-N records
- Pagination
- Improving query performance during development

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

Suppose you want to display 10 records per page.

Page 1

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 10 OFFSET 0;
```

Page 2

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 10 OFFSET 10;
```

Page 3

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 10 OFFSET 20;
```

&nbsp;

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

&nbsp;

&nbsp;

# Real-World Use Cases

| Scenario          | Query                               |
| ----------------- | ----------------------------------- |
| Dashboard preview | `LIMIT 10`                          |
| Top 5 customers   | `ORDER BY revenue DESC LIMIT 5`     |
| Latest orders     | `ORDER BY order_date DESC LIMIT 20` |
| Pagination        | `LIMIT 20 OFFSET 40`                |
| Testing queries   | `LIMIT 100`                         |

&nbsp;

&nbsp;

&nbsp;

# Interview Questions

1. Why do we use `LIMIT`
2. Does `LIMIT` guarantee the same rows every time?
3. Which executes first: `ORDER BY` or `LIMIT`?
4. Can LIMIT be used without ORDER BY?
5. Can LIMIT improve query performance?
6. How do you retrieve the second-highest salary using LIMIT?

&nbsp;

&nbsp;

&nbsp;

# Answer

## 2. Does LIMIT guarantee the same rows every time?

No, unless you use ORDER BY.

&nbsp;

## 3. Which executes first: ORDER BY or LIMIT?

Answer: ORDER BY executes before LIMIT.

&nbsp;

## 4. Can LIMIT be used without ORDER BY?

Yes, but the returned rows are not guaranteed to be in any particular order.

&nbsp;

## 5. Can LIMIT improve query performance?

Yes, especially when you only need a small subset of rows, such as for dashboards or previews. However, if the query still requires sorting a very large dataset (ORDER BY on an unoptimized column), the database may still process many rows before applying the limit.

&nbsp;

## 6. How do you retrieve the second-highest salary using LIMIT?

```sql
SELECT salary from employees
order by salary DESC
limit 1 offset 1;
```

&nbsp;

&nbsp;
