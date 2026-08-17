# Overview

- [Overview](#overview)
- [Definition](#definition)

&nbsp;

&nbsp;

&nbsp;

# Definition

`NULL` represents a **missing** or **unknown value** or **undefined value**. 

To check for `NULL`, you must use `IS NULL` or `IS NOT NULL`.

It is not the same as:
- `0` (zero)
- `''` (empty string)
- `FALSE`

&nbsp;

&nbsp;

# Creating a table with NULL values
```sql
CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2),
    ManagerID INT NULL
);
```

Here, **ManagerID** can have `NULL` if an employee has no manager.

&nbsp;

## Inserting NULL

```sql
INSERT INTO Employees (EmpID, Name, Salary, ManagerID)
VALUES (1, 'Alice', 50000, NULL);
```

&nbsp;


&nbsp;

# Checking for NULL
You cannot use `=` or `!=` to compare with NULL.

### ❌ Incorrect:
```sql
SELECT * FROM employees
WHERE salary = NULL;
```

&nbsp;

### ✅ Correct:
```sql
SELECT * FROM employees
WHERE salary IS NULL;
```

&nbsp;

To find rows where the value exists:

```sql
SELECT * FROM Employees
WHERE ManagerID IS NOT NULL;
```

&nbsp;

&nbsp;

# NULL in comparisons

Any comparison with NULL results in **UNKNOWN**.

```sql
SELECT 10 = NULL;   -- UNKNOWN
SELECT NULL > 5;    -- UNKNOWN
SELECT NULL = NULL; -- UNKNOWN
```

&nbsp;

&nbsp;
&nbsp;

&nbsp;

# NULL handling

NULL handling in SQL refers to the way SQL deals with missing or unknown values. NULL is not the same as `0`, an empty string (`''`), or `FALSE`.



&nbsp;

&nbsp;

## Handling NULL with functions

Use functions to replace **NULL** with another value.


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
