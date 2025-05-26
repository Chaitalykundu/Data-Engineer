# Overview

- [Overview](#overview)

&nbsp;

&nbsp;

&nbsp;

# ALTER command

ALTER command is used to **modify an existing table structure** (add, modify, or delete columns).

&nbsp;

&nbsp;

# Syntax

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
