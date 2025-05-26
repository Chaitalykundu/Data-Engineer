# What is a VIEW in SQL?

A VIEW is a virtual table based on the result of a SQL query. It does not store data physically like a regular table — instead, it stores a SQL SELECT statement.

You can think of a view as a saved SQL query that you can use like a table.

&nbsp;

&nbsp;

# Why Use Views

| Use Case                 | Benefit                                         |
| ------------------------ | ----------------------------------------------- |
| Simplify Complex Queries | Store complex joins/filters as a view for reuse |
| Enhance Security         | Restrict user access to specific columns/rows   |
| Data Abstraction         | Hide raw table structures from end users        |
| Logical Data Layer       | Present data in a user-friendly format          |

&nbsp;

&nbsp;

# Create a view

Defines a virtual table based on a query

&nbsp;

## Syntax

```sql
CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;
```

&nbsp;

## Example

Suppose you have a table:

```sql
SELECT * FROM employees;
```

| id  | name  | department | salary |
| --- | ----- | ---------- | ------ |
| 1   | Alice | HR         | 55000  |
| 2   | Bob   | IT         | 80000  |
| 3   | Carol | Finance    | 70000  |

&nbsp;

Create a view for high-paid employees:

```sql
CREATE VIEW high_paid_employees AS
SELECT name, salary
FROM employees
WHERE salary > 60000;
```

Now use it like a table:

```sql
SELECT * FROM high_paid_employees;
```

&nbsp;

&nbsp;

# Updating a View

- Some simple views (based on a single table without GROUP BY, JOIN, or DISTINCT) are updatable.

- You can also create read-only views

&nbsp;

&nbsp;

# Alter or Drop View

```sql
-- Update an existing view
CREATE OR REPLACE VIEW high_paid_employees AS
SELECT name FROM employees WHERE salary > 70000;

-- Drop a view
DROP VIEW high_paid_employees;
```

&nbsp;

&nbsp;

# Summary Table

| Feature            | View                                  |
| ------------------ | ------------------------------------- |
| Is it physical?    | ❌ No (virtual)                       |
| Stores data?       | ❌ No                                 |
| Based on?          | A `SELECT` query                      |
| Usable like table? | ✅ Yes                                |
| Modifiable?        | 🔸 Sometimes (if simple)              |
| Use cases          | Simplification, security, abstraction |

&nbsp;

&nbsp;
