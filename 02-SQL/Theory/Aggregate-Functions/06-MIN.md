# Overview

- [Overview](#overview)
- [MIN](#min)
- [Syntax](#syntax)
- [Example](#example)
  - [Example 1 — Lowest salary](#example-1--lowest-salary)
  - [Example 2: `MIN()` with Date](#example-2-min-with-date)
  - [Example 3: MIN() with String](#example-3-min-with-string)
  - [Example 4: Minimum Salary by Department](#example-4-minimum-salary-by-department)
  - [Example 5: MIN() with WHERE](#example-5-min-with-where)
  - [Example 6: MIN() with GROUP BY](#example-6-min-with-group-by)
  - [MIN() with HAVING](#min-with-having)
  - [MAX() with Expressions](#max-with-expressions)
  - [10. Retrieve the Employee with the Lowest Salary](#10-retrieve-the-employee-with-the-lowest-salary)
  - [MIN() with Window Function](#min-with-window-function)
- [Real-Life Usage](#real-life-usage)
- [Performance Tips](#performance-tips)
- [Difference Between MIN() and ORDER BY](#difference-between-min-and-order-by)
- [Difference Between MIN() and LEAST()](#difference-between-min-and-least)
- [Interview Questions](#interview-questions)
  - [Beginner](#beginner)
  - [Intermediate](#intermediate)
  - [Advanced](#advanced)

&nbsp;

&nbsp;

&nbsp;

# MIN

`MIN()` is an aggregate function that returns the smallest (minimum) value from a specified column.

It scans all the values in the column and returns the lowest value.

&nbsp;

It works with:

- Numeric data (INT, FLOAT, DECIMAL)
- Date and Time (DATE, TIMESTAMP)
- Character/String (CHAR, VARCHAR)

`MIN()` ignores NULL values.

&nbsp;

&nbsp;

# Syntax

```sql
SELECT MIN(column_name)
FROM table_name;
```

&nbsp;

&nbsp;

# Example

## Example 1 — Lowest salary

```sql
SELECT MIN(salary)
FROM Employees;
```

`NULL` is ignored.

&nbsp;

&nbsp;

## Example 2: `MIN()` with Date

Find the earliest joining date.

```sql
SELECT MIN(joining_date)
FROM employee;
```

Return the oldest date.

&nbsp;

&nbsp;

## Example 3: MIN() with String

Find the alphabetically first employee.

```sql
SELECT MIN(name)
FROM employee;
```

Strings are compared alphabetically.

&nbsp;

&nbsp;

## Example 4: Minimum Salary by Department

```sql
SELECT department,
       MIN(salary)
FROM employee
GROUP BY department;
```

Return the lowest salary for every department

&nbsp;

&nbsp;

## Example 5: MIN() with WHERE

Find the minimum salary in the IT department.

```sql
SELECT MIN(salary)
FROM employee
WHERE department = 'IT';
```

Only IT employees are considered.

&nbsp;

&nbsp;

## Example 6: MIN() with GROUP BY

Find the minimum salary in each department.

```sql
SELECT *
FROM employee
WHERE salary = (
    SELECT MIN(salary)
    FROM employee
);
```

&nbsp;

&nbsp;

## MIN() with HAVING

Find departments whose minimum salary is greater than 55,000.

```sql
SELECT department,
       MIN(salary)
FROM employee
GROUP BY department
HAVING MIN(salary) > 65000;
```

&nbsp;

&nbsp;

## MAX() with Expressions

Find the minimum annual salary.

```sql
SELECT MIN(salary * 12)
FROM employee;
```

`MIN()` can work with expressions as long as they evaluate to a comparable value.

&nbsp;

&nbsp;

## 10. Retrieve the Employee with the Lowest Salary

`MIN()` returns only the value, not the entire row.

```sql
SELECT *
FROM employee
WHERE salary =
(
    SELECT MIN(salary)
    FROM employee
);
```

&nbsp;

&nbsp;

## MIN() with Window Function

```sql
SELECT emp_id,
       department,
       salary,
       MIN(salary) OVER(PARTITION BY department) AS dept_min_salary
FROM employee;
```

&nbsp;

&nbsp;

# Real-Life Usage

Used in:

- minimum salary
- earliest joining date
- cheapest product
- first event timestamp in an event log.

Real-World Uses of MIN()
Find the lowest salary in a company.
Find the earliest order date.
Find the oldest transaction in a table.
Find the lowest product price.
Find the minimum temperature recorded.
Find the earliest login of a user.
Find the first event timestamp in an event log.

&nbsp;

&nbsp;

# Performance Tips

- `MIN()` is generally faster than sorting the entire table when you only need the minimum value.
- Apply WHERE before `MIN()` whenever possible to reduce the number of rows processed.
- Database optimizers can often use indexes (or metadata in columnar databases like Snowflake) to compute `MIN()` efficiently.

&nbsp;

&nbsp;

&nbsp;

# Difference Between MIN() and ORDER BY

| MIN()                                                      | ORDER BY + LIMIT                              |
| ---------------------------------------------------------- | --------------------------------------------- |
| Aggregate function                                         | Sorting operation                             |
| Returns only the minimum value                             | Returns the first row after sorting           |
| Often more efficient when only the minimum value is needed | Useful when you need the row(s) after sorting |

&nbsp;

&nbsp;

# Difference Between MIN() and LEAST()

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview Questions

## Beginner

1. What is the MIN() function?
2. What data types does MIN() support?
3. Does MIN() ignore NULL values?
4. Can MIN() be used on strings?
5. Can MIN() be used on dates?

&nbsp;

&nbsp;

## Intermediate

1. What is the difference between MIN() and ORDER BY ... LIMIT 1?
2. Can MIN() be used with GROUP BY?
3. Can MIN() be used with HAVING?
4. Can MIN() be used on expressions?
5. What happens if all values are NULL?

&nbsp;

&nbsp;

## Advanced

1. How do you retrieve the complete row containing the minimum value?
2. What is the difference between MIN() and LEAST()?
3. Can MIN() be used as a window function?
4. What is the difference between MIN(column) and MIN(column) OVER(PARTITION BY department)?
5. How does MIN() behave on very large tables in Snowflake?

&nbsp;
