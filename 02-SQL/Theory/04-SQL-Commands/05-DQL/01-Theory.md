# Overview

- [Overview](#overview)
- [DQL](#dql)
- [Purpose](#purpose)
- [List of DQL Commands](#list-of-dql-commands)
- [Important Notes](#important-notes)
- [SELECT Interview Questions](#select-interview-questions)
  - [Basic Level](#basic-level)
  - [Intermediate Level](#intermediate-level)
  - [Scenario-Based Questions](#scenario-based-questions)
  - [Performance Questions](#performance-questions)
  - [Snowflake-Specific Questions](#snowflake-specific-questions)
  - [Advanced Interview Questions](#advanced-interview-questions)
  - [Coding Questions](#coding-questions)
  - [Tricky Questions](#tricky-questions)
  - [Real Interview Questions (4+ Years)](#real-interview-questions-4-years)

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

&nbsp;

&nbsp;

# SELECT Interview Questions

## Basic Level

What is the SELECT statement in SQL?
What is the syntax of the SELECT statement?
How do you select all columns from a table?
How do you select specific columns?
What is the difference between SELECT _ and selecting specific columns?
Why should we avoid using SELECT _ in production?
Can we retrieve the same column multiple times in a SELECT statement?
Can we rename a column in SELECT?
What is a column alias?
Does an alias permanently rename a column?

&nbsp;

&nbsp;

## Intermediate Level

Can you perform calculations inside a SELECT statement?
Can you concatenate columns in SELECT?
Can you use functions inside SELECT?
Can you use aggregate functions inside SELECT?
Can you use CASE inside SELECT?
Can you display constant values in SELECT?
Can you use expressions inside SELECT?
What happens if one of the selected columns contains NULL?
Can SELECT return duplicate rows?
How do you remove duplicates?

&nbsp;

&nbsp;

## Scenario-Based Questions

Select employee name along with annual salary.
Display employee name in uppercase.
Display first and last name as one column.
Display salary after a 10% hike.
Show today's date using SELECT.
Display department names in lowercase.
Display employee name along with salary and bonus.
Display a custom message using SELECT.
Select employees whose salary is greater than their manager's salary.
Display NULL values as "Not Available".

&nbsp;

&nbsp;

## Performance Questions

Why is SELECT _ considered a bad practice?
How does SELECT _ affect query performance?
Does SELECT _ use more network bandwidth?
Does selecting fewer columns improve performance?
How does column pruning work?
How does SELECT affect I/O?
What happens if new columns are added to a table using SELECT _?
How does SELECT _ impact views?
Why do large companies discourage SELECT _?
Does Snowflake optimize SELECT \_?

&nbsp;

&nbsp;

## Snowflake-Specific Questions

Does Snowflake scan all columns when using SELECT _?
How does Snowflake perform column pruning?
What is micro-partition pruning?
How does selecting fewer columns reduce cost in Snowflake?
Why is SELECT _ expensive in Snowflake?
Does SELECT _ affect warehouse credits?
How does query profile show scanned columns?
Can SELECT _ impact result caching?
How does Snowflake compress selected columns?
What happens if a VARIANT column is included in SELECT \_?

&nbsp;

&nbsp;

## Advanced Interview Questions

What is the logical execution order of a SELECT query?
Can we use aliases in the WHERE clause?
Why can't aliases be used in WHERE?
Can aliases be used in ORDER BY?
Can aliases be used in GROUP BY?
Can we use subqueries inside SELECT?
Can SELECT return rows without using FROM?
Can SELECT return system functions?
Can SELECT return the current user?
Can SELECT return metadata information?

&nbsp;

&nbsp;

## Coding Questions

Write a query to display employee names only.
Write a query to display employee names and salaries.
Display employee names with salary increased by 20%.
Display full names using concatenation.
Display employee names in uppercase.
Display employee names in lowercase.
Display today's date.
Display current timestamp.
Display company name as a constant for every employee.
Display salary rounded to two decimal places.

&nbsp;

&nbsp;

## Tricky Questions

Is SELECT \* FROM table; always slower?
Does SELECT execute before FROM?
Can SELECT be written without FROM?
Which executes first: SELECT or WHERE?
Can SELECT retrieve data from multiple tables without JOIN?
Can you use DISTINCT inside SELECT?
Is SELECT NULL; valid?
Is SELECT 1; valid?
What does SELECT CURRENT_DATE; return?
What happens if you select a non-existent column?

&nbsp;

&nbsp;

## Real Interview Questions (4+ Years)

1. Why shouldn't we use SELECT \* in production?
2. How would you optimize a slow SELECT query?
3. Explain column pruning with an example.
4. How does Snowflake optimize SELECT queries?
5. What happens internally when you execute a SELECT query?
6. How do you reduce Snowflake compute costs while querying?
7. Explain the difference between logical query processing and physical execution.
8. How do you troubleshoot a slow SELECT query in Snowflake?
9. How do you identify which columns are causing excessive scanning?
10. Explain the SELECT query lifecycle from parser to result.

&nbsp;

&nbsp;
