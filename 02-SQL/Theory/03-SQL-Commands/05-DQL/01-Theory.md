# Overview

- [Overview](#overview)
- [DQL](#dql)
- [Purpose](#purpose)
- [List of DQL Commands](#list-of-dql-commands)
- [Important Notes](#important-notes)

&nbsp;

&nbsp;

&nbsp;

# DQL

**DQL = Data Query Language**

DQL (Data Query Language) in SQL is used to **retrieve data** from a database.

It is one of the core subsets of SQL focused purely on querying, not modifying data.

It mainly includes the **SELECT** statement.

&nbsp;

&nbsp;

# Purpose

- Fetch data from one or more tables
- Apply filters, sorting, grouping, and transformations

&nbsp;

&nbsp;

# List of DQL Commands

| Statement | Description                 | Example                       |
| --------- | --------------------------- | ----------------------------- |
| `SELECT`  | Retrieves data from a table | `SELECT name FROM employees;` |

&nbsp;

&nbsp;

# Important Notes

- DQL does not modify data (unlike INSERT, UPDATE, DELETE)
- It is **read-only**
- Often combined with functions like:
  - `COUNT()`
  - `SUM()`
  - `AVG()`
  - `MAX()`
  - `MIN()`

&nbsp;

&nbsp;
