# Content

- [Content](#content)
- [Questions](#questions)
  - [1. SQL Basics](#1-sql-basics)
  - [2. SELECT Queries](#2-select-queries)
- [Answer](#answer)
  - [1. SQL Basics](#1-sql-basics-1)
    - [1. What is SQL?](#1-what-is-sql)
    - [2. What are the different types of SQL commands?](#2-what-are-the-different-types-of-sql-commands)
    - [3. Difference between DDL, DML, DCL, TCL, DQL?](#3-difference-between-ddl-dml-dcl-tcl-dql)
    - [4. What is a database?](#4-what-is-a-database)
    - [5. What is a table?](#5-what-is-a-table)
    - [6. What is a schema?](#6-what-is-a-schema)
    - [7. What are rows and columns?](#7-what-are-rows-and-columns)
    - [8. Difference between SQL and NoSQL?](#8-difference-between-sql-and-nosql)
    - [9. Difference between SQL and MySQL?](#9-difference-between-sql-and-mysql)
    - [10. Why do we use SQL?](#10-why-do-we-use-sql)
    - [11. What is normalization?](#11-what-is-normalization)
    - [12. What are primary and foreign keys?](#12-what-are-primary-and-foreign-keys)
    - [13. What is NULL?](#13-what-is-null)
    - [14. What is the difference between DELETE, DROP, and TRUNCATE?](#14-what-is-the-difference-between-delete-drop-and-truncate)
  - [2. SELECT Queries](#2-select-queries-1)
    - [1. What is the purpose of SELECT?](#1-what-is-the-purpose-of-select)
    - [2. What is the difference between `SELECT *` and `SELECT specific_column`](#2-what-is-the-difference-between-select--and-select-specific_column)
    - [3. Write a query to retrieve all records from a table.](#3-write-a-query-to-retrieve-all-records-from-a-table)
    - [4. Write a query to retrieve only employee names.](#4-write-a-query-to-retrieve-only-employee-names)
    - [5. Can SELECT retrieve multiple columns?](#5-can-select-retrieve-multiple-columns)
    - [6. What is the output? `SELECT 100;`](#6-what-is-the-output-select-100)
    - [7. What is the output? `SELECT 'SQL';`](#7-what-is-the-output-select-sql)
    - [8. Can SELECT work without a table?](#8-can-select-work-without-a-table)
    - [9. Which query is better and why? `SELECT *` or `SELECT employee_id, employee_name`](#9-which-query-is-better-and-why-select--or-select-employee_id-employee_name)
    - [10. What happens if a selected column does not exist?](#10-what-happens-if-a-selected-column-does-not-exist)

&nbsp;

&nbsp;

&nbsp;

What is a SELECT statement? Write a query to get all columns from a users table.

WHERE clause - Write a query to find all users with age greater than 25.

ORDER BY - Write a query to get all products sorted by price in descending order.

LIMIT - Write a query to get the top 5 most expensive items.

DISTINCT - Write a query to find all unique cities from a customers table.

COUNT aggregate - Write a query to count how many orders exist in an orders table.

JOIN - Write a query to get orders with customer names (join orders and customers tables).

GROUP BY - Write a query to count how many orders each customer has placed.

INSERT - Write a query to insert a new user with name 'John' and email '<john@example.com>'.

UPDATE - Write a query to change a user's email to '<newemail@example.com>' where their ID is 5.

&nbsp;

&nbsp;

&nbsp;

# Questions

## 1. SQL Basics

1. What is SQL?
2. What are the different types of SQL commands?
3. Difference between DDL, DML, DCL, TCL, DQL?
4. What is a database?
5. What is a table?
6. What is a schema?
7. What are rows and columns?
8. Difference between SQL and NoSQL?
9. Difference between SQL and MySQL?
10. Why do we use SQL?
11. What is normalization?
12. What are primary and foreign keys?
13. What is NULL?
14. What is the difference between DELETE, DROP, and TRUNCATE?

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

## 2. SELECT Queries

1. What is the purpose of SELECT?
2. What is the difference between `SELECT *` and `SELECT specific_column`
3. Write a query to retrieve all records from a table.
4. Write a query to retrieve only employee names.
5. Can SELECT retrieve multiple columns?
6. What is the output? `SELECT 100;`
7. What is the output? `SELECT 'SQL';`
8. Can SELECT work without a table?
9. Which query is better and why? `SELECT *` or `SELECT employee_id, employee_name`
10. What happens if a selected column does not exist?

11. How do you select specific columns?
    SELECT name, salary
    FROM employees;
    Difference between WHERE and HAVING?
    Difference between DISTINCT and GROUP BY?
    What does LIMIT do?
    SELECT _
    FROM employees
    LIMIT 5;
    Difference between ORDER BY ASC and DESC?
    What is LIKE?
    SELECT \*
    FROM employees
    WHERE name LIKE 'A%';
    Difference between % and \_ in LIKE? 3. Filtering and Conditions
    Difference between:
    =
    <>
    IN
    BETWEEN
    IS NULL
    EXISTS
    Find employees earning more than 50,000:
    SELECT _
    FROM employees
    WHERE salary > 50000;
    Find employees with salary between 50k–80k:
    SELECT \_
    FROM employees
    WHERE salary BETWEEN 50000 AND 80000;
    Difference between NULL and 0?
    Why do we use COALESCE()?

Example:

SELECT COALESCE(phone,'Not Available')
FROM customers; 4. Aggregate Functions
What are aggregate functions?
Explain:
COUNT()
SUM()
AVG()
MIN()
MAX()
Count employees:
SELECT COUNT(_)
FROM employees;
Find average salary:
SELECT AVG(salary)
FROM employees;
Difference between:
COUNT(_)
COUNT(column) 5. GROUP BY and HAVING
What does GROUP BY do?
Find department-wise average salary:
SELECT department,
AVG(salary)
FROM employees
GROUP BY department;
Departments having more than 5 employees:
SELECT department,
COUNT(_)
FROM employees
GROUP BY department
HAVING COUNT(_) > 5; 6. Joins (Very Important)
What is JOIN?
Types of joins:
INNER JOIN
LEFT JOIN
RIGHT JOIN
FULL OUTER JOIN
SELF JOIN
CROSS JOIN
Difference:
INNER JOIN vs LEFT JOIN
LEFT JOIN vs RIGHT JOIN
Example:
SELECT e.name,
d.department_name
FROM employee e
JOIN department d
ON e.dept_id=d.id;
What happens if no join condition is provided? 7. Subqueries
What is a subquery?
Types:
Single row
Multi-row
Correlated
Find employees with salary above average:
SELECT \*
FROM employees
WHERE salary >
(
SELECT AVG(salary)
FROM employees
);
Difference:
Subquery
CTE 8. SQL Constraints
Explain:
PRIMARY KEY
FOREIGN KEY
UNIQUE
CHECK
DEFAULT
NOT NULL
Difference:
PRIMARY KEY
vs
UNIQUE
Can a table have multiple primary keys? 9. Table Operations
Difference:
DELETE
TRUNCATE
DROP
How to add a column?
ALTER TABLE employee
ADD age INT;
Rename a table:
ALTER TABLE employee
RENAME TO emp; 10. Indexes and Performance (Basic)
What is an index?
Advantages and disadvantages of indexes?
Clustered vs Non-clustered index?
Why is query optimization important? 11. Beginner Practical Questions
Find duplicate records.
Find second highest salary.
Remove duplicates.
Find top 3 salaries.
Count employees department-wise.
Find employees not assigned to departments.
Display employee names in uppercase.
Find records created in last 30 days.
Find total sales by month.
Get latest record per customer. 12. Mini Mock Interview

Try answering these without running SQL:

Difference between WHERE and HAVING?
Explain LEFT JOIN with example.
Difference between DELETE and TRUNCATE?
Find second highest salary.
Explain normalization.
What is NULL?
Difference between GROUP BY and ORDER BY?
What is an index?
Difference between UNION and UNION ALL?
What happens when joining tables without ON?

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

# Answer

## 1. SQL Basics

### 1. What is SQL?

SQL stands for Structured Query Language. It is used to store, manipulate and retrieve data in databases. SQL is used to interact with relational databases.

&nbsp;

&nbsp;

### 2. What are the different types of SQL commands?

### 3. Difference between DDL, DML, DCL, TCL, DQL?

### 4. What is a database?

### 5. What is a table?

### 6. What is a schema?

### 7. What are rows and columns?

### 8. Difference between SQL and NoSQL?

### 9. Difference between SQL and MySQL?

### 10. Why do we use SQL?

### 11. What is normalization?

### 12. What are primary and foreign keys?

### 13. What is NULL?

### 14. What is the difference between DELETE, DROP, and TRUNCATE?

&nbsp;

&nbsp;

&nbsp;

## 2. SELECT Queries

### 1. What is the purpose of SELECT?

We use SELECT to retrieve the data from any database table

```sql
SELECT * FROM employees;
```

This returns all records.

&nbsp;

&nbsp;

### 2. What is the difference between `SELECT *` and `SELECT specific_column`

| SELECT \*           | SELECT specific_column           |
| ------------------- | -------------------------------- |
| Returns all columns | Returns only specific_column     |
| More data retrieved | Faster when fewer columns needed |

&nbsp;

&nbsp;

### 3. Write a query to retrieve all records from a table.

```sql
SELECT * FROM table_name;
```

&nbsp;

&nbsp;

### 4. Write a query to retrieve only employee names.

```sql
SELECT * FROM employee_name;
```

&nbsp;

&nbsp;

### 5. Can SELECT retrieve multiple columns?

```sql
SELECT employee_name,
       salary
FROM employees;
```

&nbsp;

&nbsp;

### 6. What is the output? `SELECT 100;`

100

Explanation: SQL can return constant values.

&nbsp;

&nbsp;

### 7. What is the output? `SELECT 'SQL';`

SQL

Explanation: Returns a string value.

&nbsp;

&nbsp;

### 8. Can SELECT work without a table?

```sql
SELECT CURRENT_DATE;
SELECT 5+10;
SELECT 100;
```

&nbsp;

&nbsp;

### 9. Which query is better and why? `SELECT *` or `SELECT employee_id, employee_name`

- Reads fewer columns
- Better performance
- Lower memory usage
- Easier maintenance

&nbsp;

&nbsp;

### 10. What happens if a selected column does not exist?

It will show error message column doesn't exist.

&nbsp;

&nbsp;

&nbsp;
