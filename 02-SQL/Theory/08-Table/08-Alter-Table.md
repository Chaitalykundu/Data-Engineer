# Overview

- [Overview](#overview)
- [ALTER Table](#alter-table)
- [Syntax](#syntax)
  - [Add a column:](#add-a-column)
  - [Drop a column:](#drop-a-column)
  - [Rename a column:](#rename-a-column)
  - [Change data type:](#change-data-type)
  - [Add constraint:](#add-constraint)

&nbsp;

&nbsp;

&nbsp;

# ALTER Table

Most common use — modify structure of a table.

&nbsp;

&nbsp;

# Syntax

## Add a column

```sql
ALTER TABLE employees ADD COLUMN department TEXT;
```

&nbsp;

## Drop a column

```sql
ALTER TABLE employees DROP COLUMN department;
```

&nbsp;

## Rename a column

```sql
ALTER TABLE employees RENAME COLUMN department TO dept_name;
```

&nbsp;

## Change data type

```sql
ALTER TABLE employees ALTER COLUMN salary TYPE NUMERIC(10, 2);
```

&nbsp;

## Add constraint

```sql
ALTER TABLE employees ADD CONSTRAINT unique_email UNIQUE(email);
```
