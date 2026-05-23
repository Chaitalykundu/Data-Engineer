# Overview

- [Overview](#overview)
- [Unique](#unique)
- [Syntax](#syntax)
- [UNIQUE vs PRIMARY KEY](#unique-vs-primary-key)

&nbsp;

&nbsp;

&nbsp;

# Unique

The `UNIQUE` constraint ensures that all values in a column are different.

It prevents duplicate values from being inserted into a column.

&nbsp;

&nbsp;

# Syntax

```sql
CREATE TABLE Employees (
    emp_id INT,
    email VARCHAR(100) UNIQUE
);
```

Here:

- email must contain unique values
- duplicates are not allowed

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# UNIQUE vs PRIMARY KEY

| Feature                     | PRIMARY KEY | UNIQUE           |
| --------------------------- | ----------- | ---------------- |
| Duplicate Values            | Not allowed | Not allowed      |
| NULL Values                 | Not allowed | Usually allowed  |
| Number Per Table            | Only one    | Multiple allowed |
| Automatically Creates Index | Yes         | Yes (usually)    |

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
