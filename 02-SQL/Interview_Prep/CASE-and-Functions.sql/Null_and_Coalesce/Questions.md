
# Meta Data

## Table

```sql
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    commission DECIMAL(10,2),
    manager_id INT,
    email VARCHAR(100),
    phone VARCHAR(20)
);
```

&nbsp;

&nbsp;

## Sample data

emp_id | emp_name | department | salary | bonus | commission | manager_id | email           | phone
-------|----------|------------|--------|-------|------------|------------|-----------------|----------
1      | Amit     | IT         | 60000  | 5000  | NULL       | 101        | <amit@mail.com>   | NULL
2      | Priya    | IT         | 75000  | NULL  | 3000       | 101        | NULL            | 9876543210
3      | Rahul    | HR         | 50000  | NULL  | NULL       | 102        | <rahul@mail.com>  | NULL
4      | Neha     | Finance    | 65000  | 7000  | 2000       | NULL       | <neha@mail.com>   | 9123456789
5      | Arjun    | HR         | 55000  | NULL  | 1500       | 102        | NULL            | NULL

&nbsp;

```sql
INSERT INTO employees (emp_id, emp_name, department, salary, bonus, commission, manager_id, email, phone)
VALUES
    (1, 'Amit', 'IT', 60000, 5000, NULL, 101, 'amit@mail.com', NULL),
    (2, 'Priya', 'IT', 75000, NULL, 3000, 101, NULL, '9876543210'),
    (3, 'Rahul', 'HR', 50000, NULL, NULL, 102, 'rahul@mail.com', NULL),
    (4, 'Neha', 'Finance', 65000, 7000, 2000, NULL, 'neha@mail.com', '9123456789'),
    (5, 'Arjun', 'HR', 55000, NULL, 1500, 102, NULL, NULL);
```

&nbsp;

&nbsp;

# Questions

## Basic

Find all employees whose bonus is NULL.
Find all employees whose bonus is not NULL.
Find employees who don't have a manager.
Find employees whose email is missing.
Find employees where both email and phone are NULL.
Find employees where either email or phone is NULL.
Display employee name and bonus. If bonus is NULL, display 0.
Display employee name and email. If email is NULL, display 'Email Not Available'.

&nbsp;

&nbsp;

&nbsp;

## Intermediate

1. Calculate each employee's total compensation:

```
salary + bonus
```

If bonus is NULL, treat it as 0.

&nbsp;

2. Calculate:

```
salary + bonus + commission
```

Treat any NULL bonus or commission as 0.

3. Display the first available contact information using this priority:

```
email → phone → 'No Contact Available'
```

5. Find employees whose bonus is NULL and salary is greater than 50,000.
Count how many employees have a NULL bonus.
Count how many employees have a non-NULL bonus.
Find the average bonus while treating NULL bonuses as 0.

Think carefully about this one:

AVG(bonus)

versus:

AVG(COALESCE(bonus, 0))

They can produce different results.

Interview-level
What is the result of this condition?
NULL = NULL

Is it TRUE, FALSE, or UNKNOWN?

Why doesn't this query correctly find NULL bonuses?
SELECT *
FROM employees
WHERE bonus = NULL;

Correct the query.

What is returned by:
SELECT COALESCE(NULL, NULL, 100, 200);
What is returned by:
SELECT COALESCE(NULL, NULL, NULL);
Explain the difference between:
SELECT COUNT(*)
FROM employees;

and:

SELECT COUNT(bonus)
FROM employees;
What's the difference between:
SUM(bonus)

and:

SUM(COALESCE(bonus, 0))

Consider what happens when every row has bonus = NULL.

Find employees who have no bonus and no commission.
Create a column called payment_status:
If bonus is NULL → 'No Bonus'
Otherwise → 'Bonus Available'

Try using CASE.

What will this return?
SELECT COALESCE(NULL, 0, 100);

Explain why the answer is 0, not 100.

What is wrong with this query?
SELECT *
FROM employees
WHERE manager_id NOT IN (101, 102, NULL);

Explain how NULL affects NOT IN

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
