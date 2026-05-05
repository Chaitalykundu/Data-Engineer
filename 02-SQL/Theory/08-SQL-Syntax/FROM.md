# Overview

- [Overview](#overview)
- [Definition](#definition)
- [Basic syntax](#basic-syntax)
- [Example](#example)
- [Select all columns](#select-all-columns)
- [With WHERE](#with-where)
- [With Aggregate Functions](#with-aggregate-functions)
- [Using multiple tables (JOIN example)](#using-multiple-tables-join-example)

&nbsp;

&nbsp;

&nbsp;

# Definition

`FROM` in SQL specifies **which table** (or source) the query should retrieve data from.

&nbsp;

&nbsp;

# Basic syntax

```sql
SELECT column_name
FROM table_name;
```

&nbsp;

&nbsp;

# Example

Using your Employee table:

```sql
SELECT first_name, Monthly_sal
FROM Employee;
```

&nbsp;

This means:

`SELECT` → what columns you want
`FROM Employee` → where to get the data from

&nbsp;

&nbsp;

# Select all columns

```sql
SELECT *
FROM Employee;
```

&nbsp;

&nbsp;

# With WHERE

```sql
SELECT first_name
FROM Employee
WHERE age > 30;
```

&nbsp;

&nbsp;

# With Aggregate Functions

```sql
SELECT AVG(Monthly_sal)
FROM Employee;
```

&nbsp;

&nbsp;

# Using multiple tables (JOIN example)

```sql
SELECT e.first_name, d.department_name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;
```

Here `FROM Employee` tells SQL the main table, and `JOIN Department` adds another table.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
