# Overview

- [Overview](#overview)
- [CASE Statement](#case-statement)
- [Why do we use CASE?](#why-do-we-use-case)
- [Types of CASE](#types-of-case)
  - [1. Simple CASE](#1-simple-case)
    - [Syntax](#syntax)
    - [Example](#example)
    - [Output](#output)
  - [2. Searched CASE (Most Used)](#2-searched-case-most-used)
    - [Syntax](#syntax-1)
    - [Example](#example-1)
    - [Output](#output-1)
- [CASE Execution Order](#case-execution-order)
  - [Example](#example-2)
    - [Result](#result)
    - [Explanation](#explanation)
- [ELSE Clause](#else-clause)
  - [Without ELSE](#without-else)
  - [With ELSE](#with-else)
  - [NOTE](#note)
- [Simple CASE vs Searched CASE](#simple-case-vs-searched-case)
- [Which one is used more in real projects?](#which-one-is-used-more-in-real-projects)
- [Interview Question](#interview-question)
- [Answer](#answer)

&nbsp;

&nbsp;

&nbsp;

# CASE Statement

The `CASE` statement is used to perform **conditional logic** in SQL.

&nbsp;

It works like:

- if
- if...else
- switch

It evaluates the list of conditions one by one and returns the value when it **meets the first condition**.

&nbsp;

&nbsp;

# Why do we use CASE?

| Use Case                | Example                                   |
| ----------------------- | ----------------------------------------- |
| Categorize values       | High/Medium/Low salary                    |
| Convert codes to names  | IT → Technology                           |
| Handle `NULL` values    | Display "Not Available"                   |
| Perform calculations    | Calculate bonus or tax                    |
| Conditional aggregation | Count employees by department             |
| Sort data               | Display specific departments first        |
| Reporting               | Create business-friendly labels           |
| Data transformation     | Convert raw values into meaningful output |

&nbsp;

&nbsp;

# Types of CASE

There are **two** types.

1. Simple CASE
2. Search CASE

&nbsp;

## 1. Simple CASE

Compares one expression with multiple values.

&nbsp;

### Syntax

```sql
CASE expression
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ELSE result
END
```

&nbsp;

### Example

```sql
SELECT employee_name,
       department,
       CASE department
            WHEN 'IT' THEN 'Technology'
            WHEN 'HR' THEN 'Human Resource'
            WHEN 'Finance' THEN 'Accounts'
            ELSE 'Other'
       END AS department_name
FROM employees;
```

N.B: CASE is start point, END is end point.

&nbsp;

### Output

| Department | Output         |
| ---------- | -------------- |
| IT         | Technology     |
| HR         | Human Resource |
| Finance    | Accounts       |

&nbsp;

How it works

SQL evaluates:

```sql
department = 'IT' ?
department = 'HR' ?
department = 'Finance' ?
```

Simple `CASE` compares one expression (**department**) against multiple values.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

## 2. Searched CASE (Most Used)

Checks conditions.

&nbsp;

### Syntax

```sql
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE result
END
```

&nbsp;

### Example

```sql
SELECT employee_name,
       department,
       CASE
            WHEN department = 'IT' THEN 'Technology'
            WHEN department = 'HR' THEN 'Human Resource'
            WHEN department = 'Finance' THEN 'Accounts'
            ELSE 'Other'
       END AS department_name
FROM employees;
```

&nbsp;

### Output

| Department | Output         |
| ---------- | -------------- |
| IT         | Technology     |
| HR         | Human Resource |
| Finance    | Accounts       |

&nbsp;

&nbsp;

# CASE Execution Order

SQL checks conditions from top to bottom.

&nbsp;

## Example

```sq;
CASE
    WHEN salary > 30000 THEN 'A'
    WHEN salary > 60000 THEN 'B'
END
```

&nbsp;

### Result

Salary = 70000

So, it returns `A`

&nbsp;

### Explanation

Because

```
70000 > 30000
```

is already TRUE.

SQL stops after the first match.

&nbsp;

&nbsp;

# ELSE Clause

## Without ELSE

```sql
CASE
    WHEN salary > 50000 THEN 'Good'
END
```

If salary = 30000

Output : NULL

## With ELSE

```sql
CASE
    WHEN salary > 50000 THEN 'Good'
    ELSE 'Average'
END
```

If salary = 30000

Output : Average

&nbsp;

&nbsp;

## NOTE

```sql
SELECT employee_name,
       department,
       CASE department
            WHEN 'IT' THEN 'Technology'
            WHEN 'HR' THEN 'Human Resource'
            WHEN 'Finance' THEN 'Accounts'
            ELSE 'Other'
       END AS department_name
FROM employees;
```

Similar to

```sql
SELECT employee_name,
       department,
       CASE
            WHEN department = 'IT' THEN 'Technology'
            WHEN department = 'HR' THEN 'Human Resource'
            WHEN department = 'Finance' THEN 'Accounts'
            ELSE 'Other'
       END AS department_name
FROM employees;
```

&nbsp;

&nbsp;

# Simple CASE vs Searched CASE

| Simple CASE                                        | Searched CASE                                                                 |
| -------------------------------------------------- | ----------------------------------------------------------------------------- |
| Compares **one expression** with different values. | Evaluates **full Boolean conditions**.                                        |
| Shorter and cleaner for equality checks.           | More flexible and powerful.                                                   |
| Only supports equality comparisons (`=`).          | Supports `=`, `>`, `<`, `BETWEEN`, `IN`, `LIKE`, `IS NULL`, `AND`, `OR`, etc. |
| Best for mapping one value to another.             | Best for complex business logic.                                              |

&nbsp;

&nbsp;

# Which one is used more in real projects?

- **Simple CASE**: Used when mapping one value to another (e.g., department codes to department names).
- **Searched CASE**: Used much more frequently in real-world SQL because business rules usually involve ranges and multiple conditions.

&nbsp;

&nbsp;

# Common Uses of CASE

## 1. In the SELECT Clause

```sql
SELECT ProductName,
       Price,
       CASE
           WHEN Price > 1000 THEN 'Expensive'
           ELSE 'Affordable'
       END AS Category
FROM Products;
```

&nbsp;

## 2. In the ORDER BY Clause

Sort records based on custom conditions.


```sql
SELECT *
FROM Employees
ORDER BY
CASE
    WHEN Department = 'IT' THEN 1
    WHEN Department = 'HR' THEN 2
    ELSE 3
END;
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;


# Interview Question

1. Which CASE statement is preferred in real-world SQL development?

&nbsp;

&nbsp;

&nbsp;

# Answer

Searched CASE is generally preferred because it is more flexible. It supports comparison operators (>, <, BETWEEN, LIKE, IN, IS NULL) and logical operators (AND, OR), making it suitable for most business logic. Simple CASE is mainly used for straightforward equality-based mappings.

&nbsp;
