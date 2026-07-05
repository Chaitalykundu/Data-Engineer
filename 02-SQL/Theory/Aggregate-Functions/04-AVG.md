# Overview

- [Overview](#overview)
- [AVG](#avg)
- [Syntax](#syntax)
- [Example](#example)
  - [Example 1 — Average salary](#example-1--average-salary)
  - [Example 2: Average with WHERE](#example-2-average-with-where)
  - [Example 3: Average by Department](#example-3-average-by-department)
  - [Example 4: Round the Average](#example-4-round-the-average)
  - [Example 5: \`\`AVG`()` with Expressions](#example-5-avg-with-expressions)
  - [Example 6: `AVG()` with DISTINCT](#example-6-avg-with-distinct)
- [Real-Life Usage](#real-life-usage)
- [Interview Questions](#interview-questions)
    - [Beginner Level](#beginner-level)
    - [Intermediate Level](#intermediate-level)
    - [Advanced Level](#advanced-level)
    - [Scenario-Based Questions](#scenario-based-questions)
- [Answer](#answer)
    - [2. What will be the output](#2-what-will-be-the-output)
    - [3. What is the difference between AVG(DISTINCT column) and AVG(column)?](#3-what-is-the-difference-between-avgdistinct-column-and-avgcolumn)

&nbsp;

&nbsp;

&nbsp;

# AVG

Calculates the average (mean) of numeric values in a column

&nbsp;

&nbsp;

# Syntax

```sql
SELECT AVG(column_name)
FROM table_name;
```

- column_name must contain numeric data.
- `AVG()` ignores NULL values.
- It returns a single value.

&nbsp;

&nbsp;

# Example

## Example 1 — Average salary

```sql
SELECT AVG(salary)
FROM Employees;
```

The NULL salary will not consider here.

&nbsp;

&nbsp;

## Example 2: Average with WHERE

Find the average salary of employees earning more than 60,000.

```sql
SELECT AVG(salary)
FROM employee
WHERE salary > 60000;
```

&nbsp;

&nbsp;

## Example 3: Average by Department

```sql
SELECT department,
       AVG(salary)
FROM employee
GROUP BY department;
```

&nbsp;

&nbsp;

## Example 4: Round the Average

```sql
SELECT ROUND(AVG(salary), 2)
FROM employee;
```

It will results 2 numbers after decimal point.

&nbsp;

&nbsp;

## Example 5: ``AVG`()` with Expressions

You can calculate the average of an expression.

```sql
SELECT AVG(salary * 12)
FROM employee;
```

This returns the average annual salary.

&nbsp;

&nbsp;

## Example 6: `AVG()` with DISTINCT

```sql
SELECT AVG(DISTINCT salary)
FROM employee;
```

&nbsp;

&nbsp;

# Real-Life Usage

Used in:

- average salary
- average order value
- average marks
- average rating

&nbsp;

&nbsp;

&nbsp;

&nbsp;


# Interview Questions

### Beginner Level

1. What does AVG() do
2. What will be the output

   | Salary |
   | -----: |
   |    100 |
   |    200 |
   |   NULL |
   |    300 |

3. What is the difference between AVG(DISTINCT column) and AVG(column)?
4. Which data types can be used with AVG()?
5. Does AVG() include NULL values?
6. What happens if all values in the column are NULL?
7. Can AVG() be used on a VARCHAR column?
8. Can AVG() be used without a GROUP BY clause?
9. What is the difference between AVG() and SUM()?
10. Does AVG() return an integer or decimal value?
11. Can AVG() be used on expressions?

&nbsp;

&nbsp;

### Intermediate Level

1. Explain the difference between AVG(column) and AVG(DISTINCT column).
2. Write a query to find the average salary of employees in the IT department.
3. How do you calculate the average salary for each department?
4. How do you find departments whose average salary is greater than 70,000?
5. Can you use WHERE with AVG()?
6. Can you use HAVING with AVG()?
7. Why can't you write the following query?
   SELECT department, AVG(salary)
   FROM employees;
8. Correct the following query.
   SELECT department, AVG(salary)
   FROM employees
   HAVING AVG(salary) > 60000;
9. What is the difference between these two queries?

   ```sql
   SELECT AVG(salary)
   FROM employees
   WHERE salary > 50000;
   ```

   vs

   ```sql
   SELECT AVG(salary)
   FROM employees;
   ```

10. What happens if duplicate salary values exist?

&nbsp;

&nbsp;

### Advanced Level

21. How is AVG() calculated internally?

Expected Answer:

AVG(column) is internally equivalent to:

SUM(column) / COUNT(column)

Both SUM() and COUNT(column) ignore NULL values.

22. Why does AVG() ignore NULL values?
23. Can AVG() return NULL?

If yes, under what conditions?

24. Which is faster? Why?
    `AVG(salary)` or `SUM(salary) / COUNT(salary)`

25. Can AVG() be used with window functions?

Example:

```sql
SELECT employee_name,
       salary,
       AVG(salary) OVER()
FROM employees;
```

Explain the output.

26. Explain the difference between `AVG(salary)` and `AVG(salary) OVER()`
27. Can AVG() be nested?

Example:

```sql
SELECT AVG(avg_salary)
FROM (
    SELECT AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
) t;
```

28. Why is AVG(DISTINCT salary) usually slower than AVG(salary)?
29. What is the output?
    | Salary |
    | ------ |
    | 100 |
    | 200 |
    | NULL |
    | 300 |

    ```
    SELECT AVG(salary)
    FROM employees;
    ```

30. What is the output?
    | Salary |
    | ------ |
    | 100 |
    | 100 |
    | 200 |
    | 300 |

    ```sql
    SELECT AVG(DISTINCT salary)
    FROM employees;
    ```

&nbsp;

&nbsp;

### Scenario-Based Questions

1.  Find employees whose salary is greater than the company average.
2.  Find departments whose average salary is higher than the overall company average.
3.  Find the difference between an employee's salary and the department's average salary.
4.  Display each employee along with the average salary of their department.
5.  Find the department having the highest average salary.
6.  Find employees whose salary is below their department's average.
7.  Calculate the average salary excluding the highest-paid employee.
8.  Calculate the average salary excluding NULL and zero salaries.
9.  Find the moving average of salary using a window function.
10. Calculate the average salary for the last 6 months of hiring data.
    Snowflake/SQL Interview Tricky Questions
11. Is the following query valid?

    ```sql
    SELECT AVG(*)
    FROM employees;
    ```

12. What is the difference between these?
    `AVG(salary)` and `AVG(DISTINCT salary)`

13. Does AVG() round automatically?
14. How do you display the average with exactly two decimal places?
15. What is returned if no rows satisfy the WHERE condition?

    Example:

    ```sql
    SELECT AVG(salary)
    FROM employees
    WHERE department = 'Marketing';
    ```

16. Can AVG() be used in the HAVING clause?
17. Can AVG() be used in the ORDER BY clause?
18. Can AVG() be used with CASE statements?

    Example:

    ```sql
    SELECT AVG(
        CASE
            WHEN department = 'IT' THEN salary
        END
    )
    FROM employees;
    ```

19. Why does AVG() ignore NULL but not 0?
20. Explain a real-world use case where you have used AVG() in a project.

&nbsp;

&nbsp;

# Answer

### 2. What will be the output

| Salary |
| -----: |
|    100 |
|    200 |
|   NULL |
|    300 |

Calculation => (100 + 200 + 300) / 3
= 200

It does not divide by 4 because NULL values are ignored.

&nbsp;

&nbsp;

### 3. What is the difference between AVG(DISTINCT column) and AVG(column)?

With DISTINCT:

```sql
SELECT AVG(DISTINCT salary)
FROM employee;
```

Calculation => (50000 + 60000 + 70000) / 3
= 60000

&nbsp;

Without DISTINCT:

```sql
SELECT AVG(salary)
FROM employee;
```

Calculation => (50000 + 50000 + 60000 + 70000) / 4
= 57500
