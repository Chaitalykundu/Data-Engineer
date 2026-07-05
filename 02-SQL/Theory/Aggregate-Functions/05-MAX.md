# Overview

- [Overview](#overview)
- [MAX](#max)
- [Syntax](#syntax)
- [Example](#example)
  - [Example 1 — Highest salary](#example-1--highest-salary)
  - [Example 2: Find Latest Joining Date](#example-2-find-latest-joining-date)
  - [Example 3: MAX() on String](#example-3-max-on-string)
  - [Example 4: Maximum Salary by Department](#example-4-maximum-salary-by-department)
  - [Example 5: Maximum Salary in IT Department](#example-5-maximum-salary-in-it-department)
  - [Example 6: Find Employee details with Highest Salary](#example-6-find-employee-details-with-highest-salary)
  - [MAX() with HAVING](#max-with-having)
  - [MAX() with Expressions](#max-with-expressions)
- [Real-Life Usage](#real-life-usage)
- [Difference Between `MAX()` and `ORDER BY`](#difference-between-max-and-order-by)
- [Questions](#questions)
  - [Beginner](#beginner)
  - [Intermediate](#intermediate)
- [Advanced](#advanced)
- [Answer](#answer)
    - [1. Does `MAX()` Return the Whole Row](#1-does-max-return-the-whole-row)

&nbsp;

&nbsp;

&nbsp;

# MAX

`MAX()` is an aggregate function that returns the largest (maximum) value from a column.

It scans all the values in the column and returns the largest value.

&nbsp;

It works with:

- Numeric data (INT, FLOAT, DECIMAL)
- Date and Time (DATE, TIMESTAMP)
- Character/String (CHAR, VARCHAR)

It ignores `NULL` values.

&nbsp;

&nbsp;

# Syntax

```sql
SELECT MAX(column_name)
FROM table_name;
```

&nbsp;

&nbsp;

# Example

## Example 1 — Highest salary

```sql
SELECT MAX(salary)
FROM Employees;
```

`NULL` is ignored.

&nbsp;

&nbsp;

## Example 2: Find Latest Joining Date

```sql
SELECT MAX(joining_date)
FROM employee;
```

Return the most recent date.

&nbsp;

&nbsp;

## Example 3: MAX() on String

```sql
SELECT MAX(name)
FROM employee;
```

Strings are compared alphabetically.

&nbsp;

&nbsp;

## Example 4: Maximum Salary by Department

```sql
SELECT department,
       MAX(salary)
FROM employee
GROUP BY department;
```

Return the highest salary for every department

&nbsp;

&nbsp;

## Example 5: Maximum Salary in IT Department

```sql
SELECT MAX(salary)
FROM employee
WHERE department = 'IT';
```

&nbsp;

&nbsp;

## Example 6: Find Employee details with Highest Salary

```sql
SELECT *
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);
```

&nbsp;

&nbsp;

## MAX() with HAVING

Departments whose maximum salary is greater than 65,000.

```sql
SELECT department,
       MAX(salary)
FROM employee
GROUP BY department
HAVING MAX(salary) > 65000;
```

&nbsp;

&nbsp;

## MAX() with Expressions

```sql
SELECT MAX(salary * 12)
FROM employee;
```

Returns the highest annual salary.


&nbsp;

&nbsp;

&nbsp;

# Real-Life Usage

Used in:

- highest salary
- latest date
- maximum marks
- top sales amount

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Difference Between `MAX()` and `ORDER BY`

| MAX()                                 | ORDER BY DESC LIMIT 1               |
| ------------------------------------- | ----------------------------------- |
| Returns only the maximum value        | Returns the first row after sorting |
| Aggregate function                    | Sorting clause                      |
| Does not conceptually require sorting | Sorts the result set                |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Questions

## Beginner

1. What is the purpose of the MAX() function?
2. What data types can MAX() be used on?
3. Does MAX() ignore NULL values?
4. Can MAX() be used on strings?
5. Can MAX() be used on dates?
6. Does `MAX()` Return the Whole Row
7. Can we use `MAX(*)`

&nbsp;

&nbsp;

## Intermediate

1. What is the difference between `MAX()` and `ORDER BY salary DESC LIMIT 1`?
2. Can MAX() be used with GROUP BY?
3. Can MAX() be used with HAVING?
4. Can MAX() be used on expressions?
5. What happens if all values are NULL?
6. What is the difference between MAX() and GREATEST()?

&nbsp;

&nbsp;

# Advanced

1. How would you retrieve the complete row having the maximum salary?
2. Can MAX() be used as a window function?
3. What is the difference between MAX(salary) and MAX(salary) OVER()?
4. Is MAX(DISTINCT salary) useful?
5. How does MAX() work on very large tables in Snowflake?

&nbsp;

&nbsp;

&nbsp;

# Answer

### 1. Does `MAX()` Return the Whole Row

No.
To retrieve the full row:

```sql
SELECT *
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);
```

&nbsp;
