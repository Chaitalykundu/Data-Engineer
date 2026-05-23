# Overview

- [Overview](#overview)
- [GROUP BY](#group-by)
- [Syntax](#syntax)
- [Example Table: Employees](#example-table-employees)
  - [Example 1 — COUNT Employees Per Department](#example-1--count-employees-per-department)
    - [Output](#output)
  - [Example 2 — SUM Salary Department Wise](#example-2--sum-salary-department-wise)
    - [Output](#output-1)
  - [Example 3 — AVG Salary](#example-3--avg-salary)
    - [Output](#output-2)
- [Important Rule of GROUP BY](#important-rule-of-group-by)
  - [Correct Query](#correct-query)
  - [Wrong Query](#wrong-query)

&nbsp;

&nbsp;

&nbsp;

# GROUP BY

`GROUP BY` is used to **group rows** that have the same values in specified columns.

&nbsp;

It is mostly used with aggregate functions like:

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

&nbsp;

&nbsp;

# Syntax

```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;
```

&nbsp;

&nbsp;

# Example Table: Employees

| emp_id | department | salary |
| ------ | ---------- | ------ |
| 1      | HR         | 30000  |
| 2      | IT         | 50000  |
| 3      | HR         | 35000  |
| 4      | IT         | 60000  |

&nbsp;

## Example 1 — COUNT Employees Per Department

```sql
SELECT department,
       COUNT(*) AS total_employees
FROM Employees
GROUP BY department;
```

### Output

| department | total_employees |
| ---------- | --------------- |
| HR         | 2               |
| IT         | 2               |

&nbsp;

&nbsp;

## Example 2 — SUM Salary Department Wise

```sql
SELECT department,
       SUM(salary) AS total_salary
FROM Employees
GROUP BY department;
```

### Output

| department | total_salary |
| ---------- | ------------ |
| HR         | 65000        |
| IT         | 110000       |

&nbsp;

&nbsp;

## Example 3 — AVG Salary

```sql
SELECT department,
       AVG(salary) AS avg_salary
FROM Employees
GROUP BY department;
```

### Output

| department | avg_salary |
| ---------- | ---------- |
| HR         | 32500      |
| IT         | 55000      |

&nbsp;

&nbsp;

&nbsp;

# Important Rule of GROUP BY

When using GROUP BY:

- Non-aggregated columns must be inside GROUP BY

&nbsp;

## Correct Query

```sql
SELECT department,
       COUNT(*)
FROM Employees
GROUP BY department;
```

&nbsp;

## Wrong Query

```sql
SELECT department,
       emp_name,
       COUNT(*)
FROM Employees
GROUP BY department;
```

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

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
