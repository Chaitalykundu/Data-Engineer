# Overview

- [Overview](#overview)
- [Alias in SQL](#alias-in-sql)
- [Column Alias](#column-alias)
  - [Syntax](#syntax)
  - [Example](#example)
    - [Output](#output)
- [AS Keyword is Optional](#as-keyword-is-optional)
- [Table Alias](#table-alias)
  - [Example](#example-1)
- [Alias in JOIN](#alias-in-join)
- [Alias with Calculated Columns](#alias-with-calculated-columns)
- [Important Points](#important-points)
- [Most Common Uses](#most-common-uses)
- [Common Interview Question](#common-interview-question)
  - [Difference Between Alias and Rename](#difference-between-alias-and-rename)

&nbsp;

&nbsp;

&nbsp;

# Alias in SQL

An Alias is a temporary alternative name given to:

- a column, or
- a table

&nbsp;

Aliases make query results:

- more readable
- shorter
- easier to understand

&nbsp;

&nbsp;

# Column Alias

Used to rename column name temporary in output.

## Syntax

```sql
SELECT column_name AS alias_name
FROM table_name;
```

&nbsp;

## Example

```sql
SELECT emp_name AS Employee_Name
FROM Employees;
```

&nbsp;

### Output

Instead of: `emp_name`

You get: `Employee_Name`

&nbsp;

&nbsp;

# AS Keyword is Optional

Both are valid:

```sql
SELECT emp_name AS Employee_Name
FROM Employees;
```

&nbsp;

```sql
SELECT emp_name Employee_Name
FROM Employees;
```

&nbsp;

&nbsp;

# Table Alias

Used to give short name to table.

&nbsp;

Very useful in:

- joins
- complex queries

&nbsp;

&nbsp;

## Example

```sql
SELECT e.emp_name
FROM Employees e;
```

Here, `e` is alias for `Employees`

&nbsp;

Instead of writing `Employees.emp_name`

You can write `e.emp_name`

&nbsp;

&nbsp;

# Alias in JOIN

```sql
SELECT e.emp_name,
       d.department_name
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id;
```

Aliases:

- e → Employees
- d → Departments

Makes query cleaner.

&nbsp;

&nbsp;

# Alias with Calculated Columns

```sql
SELECT salary * 12 AS annual_salary
FROM Employees;
```

&nbsp;

&nbsp;

# Important Points

| Point                               | Explanation                        |
| ----------------------------------- | ---------------------------------- |
| Temporary                           | Exists only during query execution |
| Does not rename actual column/table | Only changes display               |
| Improves readability                | Especially in joins                |

&nbsp;

&nbsp;

# Most Common Uses

- Rename output columns
- Shorten table names
- Improve join readability
- Handle calculated columns

&nbsp;

&nbsp;

&nbsp;

# Common Interview Question

## Difference Between Alias and Rename

| Alias                        | Rename                     |
| ---------------------------- | -------------------------- |
| Temporary                    | Permanent                  |
| Used in query                | Changes actual object name |
| No database structure change | Alters structure           |

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

&nbsp;

&nbsp;
&nbsp;

&nbsp;

&nbsp;
