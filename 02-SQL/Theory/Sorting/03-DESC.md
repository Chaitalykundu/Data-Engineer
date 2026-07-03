# Content

- [Content](#content)
- [Definition](#definition)
- [Syntax](#syntax)
- [Example](#example)
  - [Example 1: Sort Salary in Descending Order](#example-1-sort-salary-in-descending-order)
  - [Example 2: Sort Employee Names (Z-A)](#example-2-sort-employee-names-z-a)
  - [Example 3: Sort by Joining Date (Newest First)](#example-3-sort-by-joining-date-newest-first)
  - [Example 4: Sort by Multiple Columns](#example-4-sort-by-multiple-columns)
  - [Example 5: DESC with LIMIT](#example-5-desc-with-limit)
  - [DESC with NULL Values](#desc-with-null-values)
    - [NULL values first](#null-values-first)
    - [NULL values last](#null-values-last)
- [Real-World Use Cases](#real-world-use-cases)
- [Best Practices](#best-practices)
- [Interview Questions](#interview-questions)
- [Answers](#answers)
  - [1. What does DESC do?](#1-what-does-desc-do)
  - [2. Is DESC mandatory?](#2-is-desc-mandatory)
  - [3. Can we use ASC and DESC together?](#3-can-we-use-asc-and-desc-together)
  - [4. Can we use column aliases in ORDER BY?](#4-can-we-use-column-aliases-in-order-by)
  - [5. Does DESC modify the data in the table?](#5-does-desc-modify-the-data-in-the-table)
  - [6. Can we sort by a column that is not in the SELECT list?](#6-can-we-sort-by-a-column-that-is-not-in-the-select-list)

&nbsp;

&nbsp;

&nbsp;

# Definition

DESC stands for `Descending Order`.

It is used with the `ORDER BY` clause to sort data from:

- Largest → Smallest (Numbers)
- Z → A (Text)
- Newest → Oldest (Dates)

&nbsp;

&nbsp;

# Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name DESC;
```

&nbsp;

&nbsp;

# Example

## Example 1: Sort Salary in Descending Order

```sql
SELECT employee_name, salary
FROM employees
ORDER BY salary DESC;
```

Highest Salary First.

&nbsp;

&nbsp;

## Example 2: Sort Employee Names (Z-A)

```sql
SELECT employee_name
FROM employees
ORDER BY employee_name DESC;
```

&nbsp;

&nbsp;

## Example 3: Sort by Joining Date (Newest First)

```sql
SELECT employee_name, joining_date
FROM employees
ORDER BY joining_date DESC;
```

&nbsp;

&nbsp;

## Example 4: Sort by Multiple Columns

First sort by department, then by salary within each department.

```sql
SELECT employee_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;
```

&nbsp;

| employee_name | department | salary |
| ------------- | ---------- | ------ |
| Ankit         | HR         | 50000  |
| Priya         | IT         | 90000  |
| Rahul         | IT         | 70000  |
| Sneha         | Sales      | 60000  |

&nbsp;

&nbsp;

## Example 5: DESC with LIMIT

Get the 5 employees with the highest salary.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 5;
```

&nbsp;

&nbsp;

## DESC with NULL Values

Suppose manager_id contains NULL values.

```sql
SELECT employee_name, manager_id
FROM employees
ORDER BY manager_id DESC;
```

&nbsp;

In databases like Snowflake, PostgreSQL, and Oracle, you can control where NULL values appear.

### NULL values first

```sql
SELECT employee_name, manager_id
FROM employees
ORDER BY manager_id DESC NULLS FIRST;
```

&nbsp;

### NULL values last

```sql
SELECT employee_name, manager_id
FROM employees
ORDER BY manager_id DESC NULLS LAST;
```

&nbsp;

&nbsp;

&nbsp;

# Real-World Use Cases

| Scenario                      | Query                                 |
| ----------------------------- | ------------------------------------- |
| Top 10 highest-paid employees | `ORDER BY salary DESC LIMIT 10`       |
| Latest customer orders        | `ORDER BY order_date DESC`            |
| Most recent transactions      | `ORDER BY transaction_timestamp DESC` |
| Highest-selling products      | `ORDER BY total_sales DESC`           |
| Recent log entries            | `ORDER BY log_time DESC`              |

&nbsp;

&nbsp;

# Best Practices

- Use DESC for Top-N reports, dashboards, and leaderboards.
- Combine DESC with LIMIT to retrieve the highest values efficiently.
- Specify NULLS FIRST or NULLS LAST when your database supports it and the placement of NULL values matters.
- When sorting by multiple columns, think carefully about the order and direction (ASC/DESC) for each column to match the business requirement.

&nbsp;

&nbsp;

&nbsp;

# Interview Questions

1. What does DESC do?
2. Is DESC mandatory?
3. Can we use ASC and DESC together?
4. Can we use column aliases in ORDER BY?
5. Does DESC modify the data in the table?
6. Can we sort by a column that is not in the SELECT list?

&nbsp;

&nbsp;

&nbsp;

# Answers

## 1. What does DESC do?

DESC is used with `ORDER BY` to sort the data from height to lowest (for number), from Z-A (for string), and the newest to oldest (date)

&nbsp;

## 2. Is DESC mandatory?

No. `ASC` is the default sorting order.

&nbsp;

## 3. Can we use ASC and DESC together?

Yes.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
ORDER BY department ASC,
         salary DESC;
```

Departments are sorted alphabetically, and salaries within each department are sorted from highest to lowest.

&nbsp;

## 4. Can we use column aliases in ORDER BY?

```sql
SELECT salary * 12 AS annual_salary
FROM employees
ORDER BY annual_salary DESC;
```

&nbsp;

## 5. Does DESC modify the data in the table?

No. It only sorts the result set returned by the query. The data stored in the table remains unchanged.

&nbsp;

## 6. Can we sort by a column that is not in the SELECT list?

Yes, in most SQL databases.

```sql
SELECT employee_name
FROM employees
ORDER BY salary DESC;
```

The results are ordered by salary even though salary is not displayed.

&nbsp;

&nbsp;
