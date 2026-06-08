# Overview

- [Overview](#overview)
- [1. Case Sensitivity Hell](#1-case-sensitivity-hell)
  - [Return](#return)
    - [Why?](#why)
  - [Fix:](#fix)
- [2. Alias Works in ORDER BY but NOT in WHERE](#2-alias-works-in-order-by-but-not-in-where)
  - [Return](#return-1)
    - [Why?](#why-1)
  - [Fix:](#fix-1)
- [3. COUNT(\*) vs COUNT(column) Trap](#3-count-vs-countcolumn-trap)
  - [Bug Scenario:](#bug-scenario)
- [4. NOT IN + NULL = Unexpected Empty Result](#4-not-in--null--unexpected-empty-result)
  - [Returns](#returns)
    - [Why?](#why-2)
  - [Fix](#fix-2)
- [5. Implicit Casting Gone Wrong](#5-implicit-casting-gone-wrong)
  - [Problem:](#problem)
  - [Return](#return-2)
  - [Fix:](#fix-3)

&nbsp;

&nbsp;

&nbsp;

# 1. Case Sensitivity Hell

```sql
CREATE TABLE customers ("Name" STRING);
SELECT Name FROM customers;
```

&nbsp;

&nbsp;

## Return

👉 ❌ Error: column not found

### Why?

- "Name" ≠ NAME
- Unquoted → uppercase
- Quoted → exact match

&nbsp;

&nbsp;

## Fix

```sql
SELECT "Name" FROM customers;
```

👉 Precautions : Works in dev, fails in prod when someone changes quoting.

&nbsp;

&nbsp;

&nbsp;

# 2. Alias Works in ORDER BY but NOT in WHERE

```sql
SELECT salary * 12 AS annual_salary
FROM employees
WHERE annual_salary > 500000;
```

&nbsp;

&nbsp;

## Return

👉 ❌ Error

### Why?

Execution order:

```
FROM → WHERE → SELECT → ORDER BY
```

👉 `annual_salary` doesn’t exist yet during WHERE

&nbsp;

&nbsp;

## Fix

```sql
SELECT *
FROM (
    SELECT salary * 12 AS annual_salary
    FROM employees
)
WHERE annual_salary > 500000;
```

&nbsp;

&nbsp;

# 3. COUNT(\*) vs COUNT(column) Trap

Problem:

```sql
SELECT COUNT(age) FROM users;
```

👉 This ignores NULL values

&nbsp;

```sql
SELECT COUNT(*) FROM users;
```

👉 Counts ALL rows

&nbsp;

&nbsp;

## Bug Scenario

Dashboard shows wrong numbers
NULL-heavy columns → misleading metrics

&nbsp;

&nbsp;

&nbsp;

# 4. NOT IN + NULL = Unexpected Empty Result

Problem:

```sql
SELECT *
FROM employees
WHERE department_id NOT IN (SELECT department_id FROM departments);
```

&nbsp;

&nbsp;

## Returns

👉 If subquery contains NULL → returns 0 rows

### Why?

NOT IN (NULL) → UNKNOWN → filtered out

&nbsp;

&nbsp;

## Fix

```sql
WHERE department_id NOT IN (
    SELECT department_id
    FROM departments
    WHERE department_id IS NOT NULL
);
```

&nbsp;

&nbsp;

OR safer:

```sql
WHERE NOT EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.department_id = e.department_id
);
```

👉 This is a BIG real-world bug

&nbsp;

&nbsp;

&nbsp;

# 5. Implicit Casting Gone Wrong

## Problem

```sql
SELECT '10' + 5;
```

&nbsp;

&nbsp;

## Return

👉 ❌ Error in Snowflake

(Some databases allow it, Snowflake is strict)

&nbsp;

&nbsp;

## Fix

```sql
SELECT TO_NUMBER('10') + 5;
```

&nbsp;

👉 Bug nature: Works in other DBs, fails in Snowflake

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
