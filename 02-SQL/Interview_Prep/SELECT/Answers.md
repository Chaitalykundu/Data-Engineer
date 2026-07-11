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

### 1. What is the SELECT statement in SQL?

SELECT statement is used to

- Fetch data from one or more tables
- Filter, sort, and group results
- Perform calculations on data

&nbsp;

&nbsp;

### 2. What is the syntax of the SELECT statement?

```sql
SELECT * FROM table_name
```

```sql
SELECT col_name(s) FROM table_name where condition;
```

&nbsp;

&nbsp;

### 3. How do you select all columns from a table?

```sql
SELECT * FROM table_name;
```

&nbsp;

&nbsp;

### 4. How do you select specific columns?

```sql
SELECT col_name FROM table_name;
```

&nbsp;

&nbsp;

### 5. What is the difference between `SELECT *` and selecting specific columns?

| `SELECT *`                             | SELECT col_name                 |
| -------------------------------------- | ------------------------------- |
| Retrieves specific columns all columns | Retrieves specific columns      |
| Can increase query execution time      | Take less time to execute query |
| Not recommended for production         | Recommended for production      |
| May reduce performance on large table  | Generally performs better       |
| More data transferred                  | Less data transferred           |
| Higher I/O and network usage           | Lower I/O and network usage     |

&nbsp;

&nbsp;

### 6. Why should we avoid using `SELECT *` in production?

Using `SELECT *` is discouraged because:

- Retrieves unnecessary columns.
- Increases I/O and network traffic.
- Consumes more memory.
- Can increase query execution time.
- Makes applications vulnerable if new columns are added later.
- Prevents efficient column pruning in many database systems.
- Makes code less readable.

&nbsp;

&nbsp;

### 7. Can we retrieve the same column multiple times in a SELECT statement?

Yes. The same column can be retrieved multiple times, with or without aliases.

```sql
SELECT employee_name,
       employee_name,
       employee_name AS emp_name
FROM employees;
```

&nbsp;

&nbsp;

### 8. Can we rename a column in SELECT?

Yes.

We can rename a column using the `AS` keyword (or simply by providing the alias without `AS`).

Example:

```sql
SELECT employee_name AS EmployeeName,
       salary AS MonthlySalary
FROM employees;
```

or

```sql
SELECT employee_name EmployeeName,
       salary MonthlySalary
FROM employees;
```

&nbsp;

&nbsp;

### 9. What is a column alias?

A column alias is a **temporary name** given to a column in the query output to improve readability. It does not change the actual column name in the database.

```sql
SELECT salary AS MonthlySalary
FROM employees;
```

&nbsp;

&nbsp;

### 10. Does an alias permanently rename a column?

NO. An alias is temporary and exists only for the duration of the query. The actual column name in the table remains unchanged.

To permanently rename a column, use an `ALTER TABLE` statement

&nbsp;

&nbsp;
