# Overview

- [Overview](#overview)
- [Count](#count)
- [Example](#example)
  - [Example 1 — Count total employees](#example-1--count-total-employees)
  - [Example 2 — Count salary entries](#example-2--count-salary-entries)
  - [Example 3 — Count unique departments](#example-3--count-unique-departments)
- [Real-Life Usage](#real-life-usage)
- [Interview Questions](#interview-questions)

&nbsp;

&nbsp;

&nbsp;

# Count

Returns the number of rows.

&nbsp;

&nbsp;

# Example

## Example 1 — Count total employees

```sql
SELECT COUNT(*)
FROM Employees;
```

COUNT(\*) returns all rows, including rows containing NULL values.

&nbsp;

&nbsp;

## Example 2 — Count salary entries

```sql
SELECT COUNT(salary)
FROM Employees;
```

NULL is ignored.

&nbsp;

Difference:

- COUNT(\*) counts all rows
- COUNT(column) ignores NULLs

&nbsp;

&nbsp;

## Example 3 — Count unique departments

```sql
SELECT COUNT(DISTINCT department)
FROM Employees;
```

Returns unique departments.

&nbsp;

&nbsp;

# Real-Life Usage

Used in:

- total employees
- total orders
- total customers
- total transactions

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview Questions

1. What does `COUNT` do?
2. What is the difference between COUNT(\*) and COUNT(column)?
3. What is the difference between COUNT(DISTINCT column) and COUNT(column)?
4. What is the real life usage of COUNT

&nbsp;

&nbsp;
