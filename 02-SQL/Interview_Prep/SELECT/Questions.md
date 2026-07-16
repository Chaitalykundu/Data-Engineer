# Content

- [Content](#content)
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

# SELECT Interview Questions

## Basic Level

1. What is the SELECT statement in SQL?
2. What is the syntax of the SELECT statement?
3. How do you select all columns from a table?
4. How do you select specific columns?
5. What is the difference between `SELECT *` and selecting specific columns?
6. Why should we avoid using `SELECT *` in production?
7. Can we retrieve the same column multiple times in a SELECT statement?
8. Can we rename a column in SELECT?
9. What is a column alias?
10. Does an alias permanently rename a column?

&nbsp;

&nbsp;

## Intermediate Level

1. Can you perform calculations inside a SELECT statement?
2. Can you concatenate columns in SELECT?
3. Can you use functions inside SELECT?
4. Can you use aggregate functions inside SELECT?
5. Can you use CASE inside SELECT?
6. Can you display constant values in SELECT?
7. Can you use expressions inside SELECT?
8. What happens if one of the selected columns contains NULL?
9. Can SELECT return duplicate rows?
10. How do you remove duplicates?

&nbsp;

&nbsp;

## Scenario-Based Questions

1. Select employee name along with annual salary.
2. Display employee name in uppercase.
3. Display first and last name as one column.
4. Display salary after a 10% hike.
5. Show today's date using SELECT.
6. Display department names in lowercase.
7. Display employee name along with salary and bonus.
8. Display a custom message using SELECT.
9. Select employees whose salary is greater than their manager's salary.
10. Display NULL values as "Not Available".

&nbsp;

&nbsp;

## Performance Questions

1.Why is SELECT _considered a bad practice?
2.How does SELECT_ affect query performance?
2.Does SELECT _use more network bandwidth?
2.Does selecting fewer columns improve performance?
2.How does column pruning work?
2.How does SELECT affect I/O?
2.What happens if new columns are added to a table using SELECT_?
2.How does SELECT _impact views?
2.Why do large companies discourage SELECT_?
2.Does Snowflake optimize SELECT \_?

&nbsp;

&nbsp;

## Snowflake-Specific Questions

1. Does Snowflake scan all columns when using SELECT \_?
2. How does Snowflake perform column pruning?
3. What is micro-partition pruning?
4. How does selecting fewer columns reduce cost in Snowflake?
5. Why is SELECT \_ expensive in Snowflake?
6. Does SELECT \_ affect warehouse credits?
7. How does query profile show scanned columns?
8. Can SELECT \_ impact result caching?
9. How does Snowflake compress selected columns?
10. What happens if a VARIANT column is included in SELECT \_?

&nbsp;

&nbsp;

## Advanced Interview Questions

1. What is the logical execution order of a SELECT query?
2. Can we use aliases in the WHERE clause?
3. Why can't aliases be used in WHERE?
4. Can aliases be used in ORDER BY?
5. Can aliases be used in GROUP BY?
6. Can we use subqueries inside SELECT?
7. Can SELECT return rows without using FROM?
8. Can SELECT return system functions?
9. Can SELECT return the current user?
10. Can SELECT return metadata information?

&nbsp;

&nbsp;

## Coding Questions

1. Write a query to display employee names only.
2. Write a query to display employee names and salaries.
3. Display employee names with salary increased by 20%.
4. Display full names using concatenation.
5. Display employee names in uppercase.
6. Display employee names in lowercase.
7. Display today's date.
8. Display current timestamp.
9. Display company name as a constant for every employee.
10. Display salary rounded to two decimal places.

&nbsp;

&nbsp;

## Tricky Questions

1. Is SELECT \* FROM table; always slower?
2. Does SELECT execute before FROM?
3. Can SELECT be written without FROM?
4. Which executes first: SELECT or WHERE?
5. Can SELECT retrieve data from multiple tables without JOIN?
6. Can you use DISTINCT inside SELECT?
7. Is SELECT NULL; valid?
8. Is SELECT 1; valid?
9. What does SELECT CURRENT_DATE; return?
10. What happens if you select a non-existent column?

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
