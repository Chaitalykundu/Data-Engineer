# Overview

- [Overview](#overview)
- [Count](#count)
- [Example](#example)
  - [Example 1 — Count total employees](#example-1--count-total-employees)
  - [Example 2 — Count salary entries](#example-2--count-salary-entries)
  - [Example 3 — Count unique departments](#example-3--count-unique-departments)
- [Real-Life Usage](#real-life-usage)

&nbsp;

&nbsp;

&nbsp;

# Count

Used to count rows.

&nbsp;

&nbsp;

# Example

## Example 1 — Count total employees

```sql
SELECT COUNT(*)
FROM Employees;
```

&nbsp;

&nbsp;

## Example 2 — Count salary entries

```sql
SELECT COUNT(salary)
FROM Employees;
```

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
