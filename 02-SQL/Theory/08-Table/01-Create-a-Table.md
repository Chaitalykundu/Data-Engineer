# Overview

- [Overview](#overview)
- [Table](#table)
- [Create a table](#create-a-table)
  - [Syntax](#syntax)
  - [Example](#example)
- [Display all tables](#display-all-tables)
- [Details of particular table](#details-of-particular-table)

&nbsp;

&nbsp;

&nbsp;

# Table

A table is a database object that stores data in rows and columns.

&nbsp;

&nbsp;

# Create a table

## Syntax

```sql
CREATE TABLE table_name(
    column_name1 datatype,
    column_name2 datatype,
    column_name3 datatype,
    .
    .
);
```

&nbsp;

&nbsp;

## Example

```sql
CREATE TABLE dept(
    DeptName VARCHAR(255),
    StudentCount int
);
```

&nbsp;

<img src="./assets/Table/create-table.png">

&nbsp;

<img src="./assets/Table/create-table-in-shell.jpg">

&nbsp;

&nbsp;

# Display all tables

To display all tables in the database we use `\\d` or `\\dt`

&nbsp;

<img src="./assets/Table/list-of-tables.jpg">

&nbsp;

&nbsp;

# Details of particular table

To see the details of particular table in the database we use `\\d table_name`

&nbsp;

<img src="./assets/Table/details-of-particular-table.jpg">

&nbsp;

&nbsp;
