# Overview

- [Overview](#overview)
- [Definition](#definition)
- [Syntax](#syntax)
- [Common Wildcards Used with `LIKE`](#common-wildcards-used-with-like)
- [Example](#example)
  - [1. Starts With](#1-starts-with)
  - [2. Ends With](#2-ends-with)
  - [3. Contains](#3-contains)
  - [4. n Character Wildcard](#4-n-character-wildcard)
  - [5. Case Sensitivity](#5-case-sensitivity)
  - [6. NOT LIKE](#6-not-like)
- [Key Points](#key-points)
- [Quick Comparison](#quick-comparison)

&nbsp;

&nbsp;

&nbsp;

# Definition

The `LIKE` operator is used to search for a specified pattern in a text column (string).

It’s often used with the `WHERE` clause to perform partial matches (not exact matches).

&nbsp;

Useful for:

- Search
- Partial text match
- Data cleaning

&nbsp;

&nbsp;

# Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name LIKE pattern;
```

&nbsp;

&nbsp;

# Common Wildcards Used with `LIKE`

| Wildcard                        | Description                                   | Example     | Matches                                                   |
| ------------------------------- | --------------------------------------------- | ----------- | --------------------------------------------------------- |
| `%`                             | Represents **zero or more characters**        | `'A%'`      | Any value starting with `A` (e.g., `Alex`, `Ananya`, `A`) |
| `_`                             | Represents **exactly one character**          | `'A_'`      | Any 2-letter word starting with `A` (e.g., `An`, `Al`)    |
| `[ ]` _(SQL Server, not MySQL)_ | Matches **any one character** inside brackets | `'J[ao]n'`  | Matches `Jan` or `Jon`                                    |
| `[^ ]` _(SQL Server)_           | Matches **any one character not in brackets** | `'J[^ao]n'` | Matches `Jen`, not `Jan` or `Jon`                         |

&nbsp;

&nbsp;

# Example

## 1. Starts With

```sql
SELECT * FROM customer where first_name like 'A%';
```

✅ Matches names starting with A → Aman, Anita, Anjali.

&nbsp;

&nbsp;

## 2. Ends With

```sql
SELECT * FROM customer where first_name like '%A';
```

✅ Matches names ending with A → Kauna, Lisa.

&nbsp;

&nbsp;

## 3. Contains

```sql
SELECT * FROM customer where first_name like '%AN%';
```

✅ Matches names containing “a” → Pratik, Saurav, Ravi.

&nbsp;

&nbsp;

## 4. n Character Wildcard

```sql
SELECT * FROM customer where first_name like 'A___E';
```

✅ Here `___` means 3 wildcard character will be there

✅ Matches names containing → ALICE, ANNIE, ANDRE.
&nbsp;

&nbsp;

## 5. Case Sensitivity

In MySQL, `LIKE` is **case-insensitive** by default.

In PostgreSQL, `LIKE` is **case-sensitive**.
Use `ILIKE` (case-insensitive `LIKE`) in PostgreSQL:

```sql
SELECT name FROM students WHERE name ILIKE 'a%';
```

&nbsp;

&nbsp;

## 6. NOT LIKE

To find names not containing “an”:

```sql
SELECT * FROM customer where first_name NOT LIKE '%AN%';
```

&nbsp;

&nbsp;

# Key Points

| Concept          | Description                                                               |
| ---------------- | ------------------------------------------------------------------------- |
| `%`              | Any number of characters (even none)                                      |
| `_`              | Exactly one character                                                     |
| Case sensitivity | Varies by DBMS                                                            |
| Performance      | `LIKE '%pattern%'` cannot use an index efficiently                        |
| Alternative      | For advanced searches → use `REGEXP` (MySQL) or `SIMILAR TO` (PostgreSQL) |

&nbsp;

&nbsp;

# Quick Comparison

| Operator | Purpose                    | Example                    |
| -------- | -------------------------- | -------------------------- |
| `=`      | Exact match                | `name = 'Amit'`            |
| `LIKE`   | Pattern match              | `name LIKE 'A%'`           |
| `IN`     | Match among list of values | `name IN ('Amit', 'Ravi')` |

&nbsp;

&nbsp;
