# Overview

- [Overview](#overview)

&nbsp;

&nbsp;

&nbsp;

# CREATE command

CREATE command is used to create new tables, databases, views, or indexes.

&nbsp;

&nbsp;

# Syntax

## Creating a Database

```sql
CREATE DATABASE SchoolDB;
```

- Creates a new database named `SchoolDB`.

&nbsp;

&nbsp;

## Creating a Table

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

## Creating an Index

```sql
CREATE INDEX idx_student_name ON Students (Name);
```

- Improves search performance on the `Name` column.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
