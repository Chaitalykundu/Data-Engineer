# Content

- [Content](#content)
- [Definition](#definition)
- [Syntax](#syntax)
- [Example](#example)
  - [Example 1: Sort Salary in Ascending Order](#example-1-sort-salary-in-ascending-order)
  - [Example 2: Sort Employee Names (A–Z)](#example-2-sort-employee-names-az)
  - [Example 3: Sort by Joining Date (Oldest First)](#example-3-sort-by-joining-date-oldest-first)
  - [Example 4: Sort by Multiple Columns](#example-4-sort-by-multiple-columns)
  - [Example 5: ASC with LIMIT](#example-5-asc-with-limit)
  - [ASC with NULL Values](#asc-with-null-values)
- [Real-World Use Cases](#real-world-use-cases)
- [Interview Questions](#interview-questions)
- [Answers](#answers)
  - [1. Is ASC mandatory?](#1-is-asc-mandatory)
  - [2. Can we sort by multiple columns?](#2-can-we-sort-by-multiple-columns)
  - [3. Can we use column aliases in ORDER BY?](#3-can-we-use-column-aliases-in-order-by)
  - [4. Does ASC modify the data in the table?](#4-does-asc-modify-the-data-in-the-table)

&nbsp;

&nbsp;

&nbsp;

# Definition

`ASC` is used with the `ORDER BY` clause to **sort data** from

- Smallest to largest (Numbers)
- A → Z (Text)
- Oldest → Newest (Dates)

Note: `ASC` is the default sorting order. Even if you don't write `ASC`, SQL sorts in ascending order.

&nbsp;

&nbsp;

# Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name ASC;
```

&nbsp;

&nbsp;

# Example

```sql
SELECT *
FROM employees
ORDER BY salary;
```

is the same as

```
SELECT *
FROM employees
ORDER BY salary ASC;
```

&nbsp;

&nbsp;

## Example 1: Sort Salary in Ascending Order

```sql
SELECT employee_name, salary
FROM employees
ORDER BY salary ASC;
```

&nbsp;

&nbsp;

## Example 2: Sort Employee Names (A–Z)

```sql
SELECT employee_name
FROM employees
ORDER BY employee_name ASC;
```

&nbsp;

&nbsp;

## Example 3: Sort by Joining Date (Oldest First)

```sql
SELECT employee_name, joining_date
FROM employees
ORDER BY joining_date ASC;
```

&nbsp;

&nbsp;

## Example 4: Sort by Multiple Columns

First sort by department, then by salary within each department.

```sql
SELECT employee_name, department, salary
FROM employees
ORDER BY department ASC, salary ASC;
```

&nbsp;

| employee_name | department | salary |
| ------------- | ---------- | ------ |
| Amit          | HR         | 45000  |
| Rahul         | HR         | 60000  |
| Sneha         | IT         | 55000  |
| Priya         | IT         | 90000  |

&nbsp;

&nbsp;

## Example 5: ASC with LIMIT

Get the 5 employees with the lowest salary.

```sql
SELECT employee_name, salary
FROM employees
ORDER BY salary ASC
LIMIT 5;
```

&nbsp;

&nbsp;

## ASC with NULL Values

Different databases handle NULL values differently.

```sql
SELECT employee_name, manager_id
FROM employees
ORDER BY manager_id ASC;
```

&nbsp;

If you want all NULL values at the end (supported in databases like Snowflake, PostgreSQL, Oracle):

```sql
SELECT employee_name, manager_id
FROM employees
ORDER BY manager_id ASC NULLS LAST;
```

&nbsp;

If you want all NULL values first (supported in databases like Snowflake, PostgreSQL, Oracle):

```sql
SELECT employee_name, manager_id
FROM employees
ORDER BY manager_id ASC NULLS FIRST;
```

&nbsp;

&nbsp;

&nbsp;

# Real-World Use Cases

| Use Case                   | Example                                       |
| -------------------------- | --------------------------------------------- |
| Lowest salary employees    | `ORDER BY salary ASC`                         |
| Oldest orders              | `ORDER BY order_date ASC`                     |
| Alphabetical customer list | `ORDER BY customer_name ASC`                  |
| Earliest transactions      | `ORDER BY transaction_time ASC`               |
| Pagination                 | `ORDER BY employee_id ASC LIMIT 20 OFFSET 40` |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview Questions

1. Is ASC mandatory?
2. Can we sort by multiple columns?
3. Can we use column aliases in ORDER BY?
4. Does ASC modify the data in the table?

&nbsp;

&nbsp;

&nbsp;

# Answers

## 1. Is ASC mandatory?

No. `ASC` is the default sorting order.

&nbsp;

## 2. Can we sort by multiple columns?

Yes.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
ORDER BY department ASC,
         salary ASC;
```

&nbsp;

## 3. Can we use column aliases in ORDER BY?

```sql
SELECT salary * 12 AS annual_salary
FROM employees
ORDER BY annual_salary ASC;
```

&nbsp;

## 4. Does ASC modify the data in the table?

No. It only sorts the result set returned by the query. The data stored in the table remains unchanged.

&nbsp;

&nbsp;

&nbsp;

&nbsp;
