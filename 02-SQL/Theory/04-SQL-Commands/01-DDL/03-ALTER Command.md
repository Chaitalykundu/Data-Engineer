# Overview

- [Overview](#overview)
- [ALTER command](#alter-command)
- [ALTER Table](#alter-table)
  - [Add a New Column](#add-a-new-column)
  - [Modify an Existing Column](#modify-an-existing-column)
  - [Delete a Column](#delete-a-column)

&nbsp;

&nbsp;

&nbsp;

# ALTER command

`ALTER` command is used to **modify an existing database objects** (add, modify, or delete columns).

&nbsp;

The `ALTER` command is used to modify database objects like:

- Tables
- Columns
- Constraints
- Schemas
- Indexes
- Views
- Databases themselves

&nbsp;

&nbsp;

# ALTER Table

## Add a New Column

```sql
ALTER TABLE Students ADD Address VARCHAR(255);
```

- Adds an `Address` column to the Students table

&nbsp;

&nbsp;

## Modify an Existing Column

```sql
ALTER TABLE Students MODIFY Age SMALLINT;
```

- ALTER TABLE Students MODIFY Age `SMALLINT`;

&nbsp;

&nbsp;

## Delete a Column

```sql
ALTER TABLE Students DROP COLUMN Email;
```

- Removes the `Email` column.

&nbsp;

&nbsp;

&nbsp;

&nbsp;
