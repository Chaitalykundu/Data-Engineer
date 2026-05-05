# Overview

- [Overview](#overview)
- [`CREATE` command](#create-command)
  - [Notes](#notes)
- [Create a Database](#create-a-database)
  - [Syntax](#syntax)
  - [Example](#example)
- [Create a Schema](#create-a-schema)
  - [Syntax](#syntax-1)
  - [Example](#example-1)
  - [Create a Table](#create-a-table)
    - [Syntax](#syntax-2)
    - [Example](#example-2)
  - [Create Table Using Another Table](#create-table-using-another-table)
    - [Syntax](#syntax-3)
    - [Example](#example-3)
  - [Create a view](#create-a-view)
    - [Syntax](#syntax-4)
    - [Example](#example-4)
  - [Create an Index](#create-an-index)
  - [Create a User (depends on DBMS)](#create-a-user-depends-on-dbms)
- [Database objects](#database-objects)

&nbsp;

&nbsp;

&nbsp;

# `CREATE` command

`CREATE` command is used to create new database or database objects like tables, views, schemas, etc.

&nbsp;

## Notes

- `CREATE` is an **auto-commit** operation – changes are permanent and cannot be rolled back.

- Some databases (like PostgreSQL and Oracle) support additional `CREATE` variations (e.g., `CREATE FUNCTION`, `CREATE ROLE`).

&nbsp;

&nbsp;

# Create a Database

Creates a new database

&nbsp;

### Syntax

```sql
CREATE DATABASE <database_name>;
```

&nbsp;

### Example

```sql
CREATE DATABASE SchoolDB;
```

- Creates a new database named `SchoolDB`.

&nbsp;

&nbsp;

# Create a Schema

Defines a namespace for database objects

&nbsp;

### Syntax

```sql
CREATE SCHEMA <schema_name>;
```

&nbsp;

### Example

```sql
CREATE SCHEMA hr;
```

&nbsp;

&nbsp;

## Create a Table

Defines a new table and its columns

&nbsp;

### Syntax

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
    .
    .
);
```

- The **column** parameters specify the names of the columns of the table.

- The **datatype** parameter specifies the type of data the column can hold (e.g. varchar, integer, date, etc.).

&nbsp;

### Example

```sql
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Email VARCHAR(255) UNIQUE

);
```

- This creates a `Students` table with 4 columns.

&nbsp;

&nbsp;

## Create Table Using Another Table

- A copy of an existing table can also be created using `CREATE TABLE`.

- The new table gets the same column definitions. All columns or specific columns can be selected.

- If you create a new table using an existing table, the new table will be filled with the existing values from the old table.

### Syntax

```sql
CREATE TABLE new_table_name AS
SELECT column1, column2,...
FROM existing_table_name
WHERE condition;
```

&nbsp;

### Example

```sql
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers;
```

&nbsp;

&nbsp;

## Create a view

Defines a virtual table based on a query

&nbsp;

### Syntax

```sql
CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;
```

&nbsp;

### Example

```sql
CREATE VIEW high_salary_employees AS
SELECT name, salary FROM employees
WHERE salary > 100000;
```

&nbsp;

&nbsp;

## Create an Index

```sql
CREATE INDEX idx_student_name ON Students (Name);
```

- Improves search performance on the `Name` column.

&nbsp;

&nbsp;

## Create a User (depends on DBMS)

```sql
CREATE USER john IDENTIFIED BY 'securePass123';
```

&nbsp;

&nbsp;

# Database objects

Database objects are

- Tables
- Views
- Indexes
- Schemas
- Users
- Stored procedures (in some DBMSs)

&nbsp;

&nbsp;

| Command           | Purpose                                  |
| ----------------- | ---------------------------------------- |
| `CREATE TABLE`    | Defines a new table and its columns      |
| `CREATE DATABASE` | Creates a new database                   |
| `CREATE VIEW`     | Defines a virtual table based on a query |
| `CREATE INDEX`    | Speeds up searches on specified columns  |
| `CREATE SCHEMA`   | Defines a namespace for database objects |
| `CREATE USER`     | Adds a new user (DBMS-specific)          |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
