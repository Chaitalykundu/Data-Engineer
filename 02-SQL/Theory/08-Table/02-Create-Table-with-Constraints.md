# Overview

- How to Create a Table with Constraints (Syntax & Example)
- Display all tables
- Details of particular table

&nbsp;

&nbsp;

&nbsp;

# Table with Constraints

## Syntax

```sql
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);
```

&nbsp;

## Example

```sql
CREATE TABLE Details(
    firstname varchar(50) NOT NULL,
    lastname varchar(50) NOT NULL,
    gender varchar(20) NOT NULL,
    roll_no INT PRIMARY KEY NOT NULL,
    date_of_birth varchar(50) NOT NULL
);
```

&nbsp;

<img src="./assets/Table/create-table-with-constraints.jpg">

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
