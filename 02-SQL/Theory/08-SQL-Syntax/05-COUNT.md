# Overview

- [Overview](#overview)
- [Definition](#definition)
- [Syntax](#syntax)
- [Types of COUNT Usage](#types-of-count-usage)
  - [1. COUNT(\*) → Counts all rows](#1-count--counts-all-rows)
    - [Note](#note)
  - [2. COUNT(column_name) → Counts non-NULL values only](#2-countcolumn_name--counts-non-null-values-only)
  - [3. COUNT(DISTINCT column_name) → Counts unique non-NULL values](#3-countdistinct-column_name--counts-unique-non-null-values)
  - [4. COUNT() with WHERE condition](#4-count-with-where-condition)
  - [5. COUNT() with GROUP BY](#5-count-with-group-by)
  - [6. COUNT() with multiple conditions](#6-count-with-multiple-conditions)
- [Combining COUNT with Other Functions](#combining-count-with-other-functions)
- [Key Points](#key-points)

&nbsp;

&nbsp;

&nbsp;

# Definition

The `COUNT()` function is used to **count the number of rows** in a table or **the number of non-NULL values** in a specific column.

It’s part of SQL’s aggregate functions, which perform calculations on groups of data.

It is often used in combination with grouping and filtering.

&nbsp;

&nbsp;

# Syntax

```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

&nbsp;

&nbsp;

# Types of COUNT Usage

## 1. COUNT(\*) → Counts all rows

```sql
SELECT COUNT(*)
FROM employees;
```

👉 Counts every row, including rows with NULL values.

&nbsp;

### Note

💡 Use this when you want to know how many total rows exist in a table.

&nbsp;

&nbsp;

## 2. COUNT(column_name) → Counts non-NULL values only

```sql
SELECT COUNT(manager_id)
FROM employees;
```

👉 Counts only the rows where manager_id is not NULL.

&nbsp;

&nbsp;

## 3. COUNT(DISTINCT column_name) → Counts unique non-NULL values

```sql
SELECT COUNT(DISTINCT department)
FROM employees;
```

👉 Returns how many unique departments exist.

&nbsp;

&nbsp;

## 4. COUNT() with WHERE condition

```sql
SELECT COUNT(*)
FROM employees
WHERE department = 'HR';
```

👉 Counts how many employees are in the HR department.

&nbsp;

&nbsp;

## 5. COUNT() with GROUP BY

```sql
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
```

👉 Returns each department and the number of employees in it.

&nbsp;

&nbsp;

## 6. COUNT() with multiple conditions

```sql
SELECT COUNT(*) AS high_salary_employees
FROM employees
WHERE salary > 70000 AND department = 'IT';
```

👉 Counts IT employees earning above ₹70,000.

&nbsp;

&nbsp;

# Combining COUNT with Other Functions

```sql
SELECT department,
       COUNT(*) AS total_employees,
       AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
```

👉 Shows both total employees and average salary per department.

&nbsp;

&nbsp;

&nbsp;

# Key Points

| Type                     | Counts NULLs? | Counts Duplicates? | Example                |
| ------------------------ | ------------- | ------------------ | ---------------------- |
| `COUNT(*)`               | ✅ Yes        | ✅ Yes             | All rows               |
| `COUNT(column)`          | ❌ No         | ✅ Yes             | Only non-null values   |
| `COUNT(DISTINCT column)` | ❌ No         | ❌ No              | Unique non-null values |

&nbsp;
