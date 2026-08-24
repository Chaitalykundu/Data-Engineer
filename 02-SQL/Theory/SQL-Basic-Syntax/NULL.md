# Content

- [Content](#content)
- [Definition](#definition)
- [Creating a table with NULL values](#creating-a-table-with-null-values)
  - [Inserting NULL](#inserting-null)
- [Checking for NULL](#checking-for-null)
  - [❌ Incorrect:](#-incorrect)
  - [✅ Correct:](#-correct)
- [NULL in comparisons](#null-in-comparisons)
- [NULL handling](#null-handling)
  - [Handling NULL with functions](#handling-null-with-functions)
- [Questions](#questions)
- [Answer](#answer)
  - [1. Why does Any comparison with NULL result in `UNKNOWN`.](#1-why-does-any-comparison-with-null-result-in-unknown)
- [2. Why does `NULL = NULL` result **unknown** but `NULL is NULL` result **true**](#2-why-does-null--null-result-unknown-but-null-is-null-result-true)

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

Note: `ManagerID INT NULL` and `ManagerID INT` are same .

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

### ❌ Incorrect

```sql
SELECT * FROM employees
WHERE salary = NULL;
```

&nbsp;

### ✅ Correct

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

| Expression     | Result  |
| -------------- | ------- |
| `10 = 10`      | TRUE    |
| `10 = 20`      | FALSE   |
| `10 = NULL`    | UNKNOWN |
| `NULL = NULL`  | UNKNOWN |
| `10 > NULL`    | UNKNOWN |
| `NULL <> 10`   | UNKNOWN |
| `NULL IS NULL` | TRUE    |

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

# Questions

1. Why does Any comparison with NULL result in `UNKNOWN`.
2. Why does `NULL = NULL` result **unknown** but `NULL is NULL` result **true**

&nbsp;

&nbsp;

# Answer

## 1. Why does Any comparison with NULL result in `UNKNOWN`

Because `NULL` means “the value is unknown/missing”, SQL cannot determine whether a comparison involving it is `TRUE` or `FALSE`.

SQL therefore uses three-valued logic:

```
TRUE | FALSE | UNKNOWN
```

For example, suppose:

```
Salary = NULL
```

This means we don't know the salary.

Now consider:

```
Salary > 50000
```

- Can SQL say TRUE? No, because the salary might be 40,000.
- Can SQL say FALSE? No, because the salary might be 70,000.

So the result is: `UNKNOWN`

Another important example:

```
NULL = NULL
```

This is also UNKNOWN, not TRUE.

Why? Imagine:

- Employee A salary = NULL
- Employee B salary = NULL

Employee A's unknown salary might be 50,000 and Employee B's might be 80,000. Two missing values don't necessarily represent the same actual value.

That's why this is wrong:

```sql
SELECT *
FROM employees
WHERE manager_id = NULL;
```

The comparison: `manager_id = NULL` never evaluates to TRUE; it evaluates to UNKNOWN.

In short, `NULL` is not a value. It represents the absence of a known value, so normal comparisons with `NULL` produce `UNKNOWN`.

&nbsp;

&nbsp;

# 2. Why does `NULL = NULL` result **unknown** but `NULL is NULL` result **true**

The key difference is that `=` compares values, while `IS NULL` checks whether a value is missing.

> NULL = NULL → UNKNOWN

`=` asks `“Are these two values equal?”`

But `NULL` means unknown value.

Suppose:

```
NULL = unknown salary
NULL = another unknown salary
```

Imagine the actual values are hidden:

```
First NULL  → maybe 50,000
Second NULL → maybe 70,000
```

SQL doesn't know whether they are equal.

Therefore: `NULL = NULL` returns **UNKNOWN**

&nbsp;

> NULL IS NULL → TRUE

IS NULL does not compare two values.

`NULL IS NULL` means `“Is NULL actually NULL?”`

Yes. Therefore: It returns `TRUE`

&nbsp;

| Expression         | What SQL is asking                  | Result    |
| ------------------ | ----------------------------------- | --------- |
| `NULL = NULL`      | Are these two **values equal**?     | `UNKNOWN` |
| `NULL <> NULL`     | Are these two **values different**? | `UNKNOWN` |
| `NULL IS NULL`     | Is this **missing/NULL**?           | `TRUE`    |
| `NULL IS NOT NULL` | Is this **not missing**?            | `FALSE`   |
