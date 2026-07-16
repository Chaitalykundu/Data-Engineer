# Overview

- [Overview](#overview)
- [Definition](#definition)
- [Syntax](#syntax)
- [Example](#example)
  - [1. Example — Numeric Range](#1-example--numeric-range)
  - [2. Example — Date Range](#2-example--date-range)
  - [3. Example — Text Range](#3-example--text-range)
  - [4. Using NOT BETWEEN](#4-using-not-between)
  - [5. Combine BETWEEN with AND/OR](#5-combine-between-with-andor)
- [Key Points](#key-points)
- [NOTE](#note)

&nbsp;

&nbsp;

&nbsp;

# Definition

The `BETWEEN` operator is used in SQL to **filter results within a specific range** — it works for numbers, dates, and text (alphabetical order).

The order should be ascending. like

&nbsp;

&nbsp;

# Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

✅ It includes both value1 and value2 in the result.

&nbsp;

&nbsp;

# Example

## 1. Example — Numeric Range

```sql
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 80000;
```

✅ Returns all employees with salary ≥ 40000 and ≤ 80000.

&nbsp;

&nbsp;

## 2. Example — Date Range

```sql
SELECT *
FROM orders
WHERE order_date BETWEEN '2025-01-01' AND '2025-01-31';
```

✅ Returns all orders placed from Jan 1 to Jan 31, 2025 (inclusive).

&nbsp;

&nbsp;

## 3. Example — Text Range

```sql
SELECT *
FROM customers
WHERE customer_name BETWEEN 'A' AND 'M';
```

✅ Returns customer names starting from A through M (alphabetically).

&nbsp;

&nbsp;

## 4. Using NOT BETWEEN

To get values outside a range:

```sql
SELECT *
FROM employees
WHERE salary NOT BETWEEN 40000 AND 80000;
```

✅ Returns employees whose salary is less than 40000 or greater than 80000.

&nbsp;

&nbsp;

## 5. Combine BETWEEN with AND/OR

```sql
SELECT *
FROM employees
WHERE (salary BETWEEN 50000 AND 80000)
  AND department = 'Sales';
```

✅ Returns Sales department employees with salary between 50k and 80k.

&nbsp;

&nbsp;

# Key Points

- `BETWEEN` is inclusive (includes boundary values).
- Works with numbers, dates, and strings.
- You can use it with `NOT`, `AND`, `OR`.

&nbsp;

&nbsp;

# NOTE

`between '2020-01-01' and '2020-02-01'` means from start of january to before 1st day of february

&nbsp;

&nbsp;
