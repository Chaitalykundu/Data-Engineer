USE SQL_PRACTICE;

/*
Assume table:
```sql
Employees (
employee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
department VARCHAR(50),
salary DECIMAL(10,2),
joining_date DATE,
city VARCHAR(50)
);
```
 */
-- Questions
-- 1. Find employees with salary greater than 50000.
SELECT
    *
FROM
    employees
where
    salary > 50000;

-- 2. Find employees from Kolkata.
SELECT
    *
FROM
    employees
where
    city = 'Kolkata';

-- = will return only Kolkata, not KOLKATA or kolkata or anything with diff case
-- or
SELECT
    *
FROM
    employees
where
    lower(city) = 'Kolkata';

-- or
SELECT
    *
FROM
    employees
where
    city ILIKE 'kolkata';

-- ILIKE is case-insensitive. it will return the value with every case
-- 3. Find employees whose salary is between 40000 and 70000.
SELECT
    *
FROM
    employees
where
    salary between 40000 and 70000;

-- or
SELECT
    *
FROM
    employees
where
    salary >= 40000
    AND salary <= 70000;

-- 4. Find employees from:
--     - Kolkata
--     - Delhi
SELECT
    *
FROM
    employees
where
    city in ('Kolkata', 'Delhi');

-- 5. Find employees NOT from Mumbai.
SELECT
    *
FROM
    employees
where
    city != 'Mumbai';

-- or
SELECT
    *
FROM
    employees
WHERE
    city <> 'Mumbai';

-- better SQL-standard syntax
-- 6. Find employees whose name starts with A.
SELECT
    *
FROM
    employees
where
    employee_name like 'A%';

-- 7. Find employees whose name ends with n.
SELECT
    *
FROM
    employees
where
    employee_name like '%n';

-- 8. Find employees whose name contains ar.
SELECT
    *
FROM
    employees
where
    employee_name like '%ar%';

-- 9. Find employees where salary is NULL.
SELECT
    *
FROM
    employees
where
    salary is null;

-- 10. Find employees hired after 2023-01-01.
SELECT
    *
FROM
    employees
where
    joining_date > '2023-01-01';