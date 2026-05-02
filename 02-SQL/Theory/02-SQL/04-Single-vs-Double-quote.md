# Overview

- [Overview](#overview)
- [Single Quotes (' ')](#single-quotes--)
  - [Purpose](#purpose)
  - [Example](#example)
- [2. Double Quotes (" ")](#2-double-quotes--)
  - [Purpose:](#purpose-1)
  - [Example:](#example-1)
- [Key Difference (Most Important)](#key-difference-most-important)
- [Snowflake-Specific Behavior](#snowflake-specific-behavior)
- [Easy Way to Remember](#easy-way-to-remember)
- [Why avoid double quotes in Snowflake](#why-avoid-double-quotes-in-snowflake)

&nbsp;

&nbsp;

&nbsp;

# Single Quotes (' ')

Used for Strings (Text Values)

&nbsp;

&nbsp;

## Purpose

- Represent literal values
- Used in `SELECT`, `WHERE`, `INSERT`, etc.

&nbsp;

&nbsp;

## Example

```sql
SELECT 'Chaitaly' AS name;
```

&nbsp;

```sql
SELECT first_name || ' ' || last_name AS full_name
FROM customers;
```

&nbsp;

```sql
SELECT *
FROM customers
WHERE city = 'Delhi';
```

&nbsp;

&nbsp;

# 2. Double Quotes (" ")

Used for Identifiers

&nbsp;

&nbsp;

## Purpose:

- Column names
- Table names
- Aliases
- Case-sensitive identifiers

&nbsp;

&nbsp;

## Example:

```sql
SELECT "first_name" FROM customers;
```

&nbsp;

```sql
SELECT first_name AS "Full Name"
FROM customers;
```

&nbsp;

✔ "Full Name" allows:

- Space in alias
- Case sensitivity

&nbsp;

&nbsp;

# Key Difference (Most Important)

| Feature        | Single Quote `' '` | Double Quote `" "` |
| -------------- | ------------------ | ------------------ |
| Usage          | String values      | Identifiers        |
| Example        | `'India'`          | `"country"`        |
| Case-sensitive | No                 | Yes                |
| Used in WHERE  | Yes                | No                 |
|                |                    |                    |

&nbsp;

&nbsp;

&nbsp;

# Snowflake-Specific Behavior

In Snowflake:

Without double quotes:

```sql
SELECT first_name FROM customers;
```

➡ Automatically treated as **UPPERCASE** → FIRST_NAME

&nbsp;

With double quotes:

```sql
SELECT "first_name" FROM customers;
```

➡ **Case-sensitive** → must match exactly

&nbsp;

&nbsp;

# Easy Way to Remember

- 👉 Single = String
- 👉 Double = Database Object

&nbsp;

&nbsp;

# Why avoid double quotes in Snowflake

- Makes identifiers case-sensitive
- Leads to unexpected errors
- Harder to maintain queries

&nbsp;

&nbsp;
