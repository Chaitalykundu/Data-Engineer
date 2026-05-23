# Overview

- [Overview](#overview)
- [ALTER command](#alter-command)
- [Basic Syntax](#basic-syntax)
- [Add a New Column](#add-a-new-column)
  - [Syntax](#syntax)
  - [Example](#example)
- [Modify an Existing Column](#modify-an-existing-column)
  - [Syntax](#syntax-1)
  - [Example](#example-1)
- [RENAME COLUMN](#rename-column)
  - [Syntax](#syntax-2)
  - [Example](#example-2)
- [DROP a Column](#drop-a-column)
  - [Syntax](#syntax-3)
  - [Example](#example-3)
- [ADD CONSTRAINT](#add-constraint)
  - [Syntax](#syntax-4)
  - [Example](#example-4)
- [RENAME TABLE](#rename-table)
  - [Syntax](#syntax-5)
  - [Example](#example-5)

&nbsp;

&nbsp;

&nbsp;

# ALTER command

`ALTER` command is used to **modify an existing database or database objects**.

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

You can use it to:

- Add columns
- Modify columns
- Rename columns
- Drop columns
- Rename tables
- Add constraints

&nbsp;

&nbsp;

# Basic Syntax

```sql
ALTER TABLE table_name
operation;
```

&nbsp;

&nbsp;

# Add a New Column

### Syntax

```sql
ALTER TABLE table_name ADD col_name datatype;
```

&nbsp;

### Example

```sql
ALTER TABLE Students ADD Address VARCHAR(255);
```

- Adds an `Address` column to the Students table

&nbsp;

&nbsp;

# Modify an Existing Column

Change datatype or size of column.

### Syntax

```sql
ALTER TABLE table_name MODIFY col_name datatype(size);
```

&nbsp;

### Example

```sql
ALTER TABLE Students MODIFY Age SMALLINT;
```

- Modifying the datatype of Age column to `SMALLINT`;

&nbsp;

&nbsp;

# RENAME COLUMN

Rename existing column.

### Syntax

```sql
ALTER TABLE table_name
RENAME COLUMN old_col_name TO new_col_name;
```

&nbsp;

### Example

```sql
ALTER TABLE Employees
RENAME COLUMN emp_name TO employee_name;
```

&nbsp;

&nbsp;

# DROP a Column

Remove a column from table.

### Syntax

```sql
ALTER TABLE table_name DROP COLUMN col_name;

```

&nbsp;

### Example

```sql
ALTER TABLE Students DROP COLUMN Email;
```

- Removes the `Email` column.

&nbsp;

&nbsp;

# ADD CONSTRAINT

Add constraint after table creation.

### Syntax

```sql
ALTER TABLE table_name ADD CONSTRAINT  COLUMN col_name;

```

&nbsp;

### Example

```sql
ALTER TABLE Employees
ADD CONSTRAINT pk_emp
PRIMARY KEY(emp_id);
```

&nbsp;

&nbsp;

# RENAME TABLE

Rename table name.

### Syntax

```sql
ALTER TABLE old_table_name
RENAME TO new_table_name;
```

&nbsp;

### Example

```sql
ALTER TABLE Employees
RENAME TO Staff;
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;
