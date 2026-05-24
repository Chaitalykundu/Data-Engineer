USE SQL_PRACTICE;

-- 1. Count total employees.
SELECT
    count(*)
FROM
    employees;

-- Counts every row.
-- 2. Count employees in HR department.
SELECT
    count(*)
FROM
    employees
where
    department = 'HR';

-- 3. Find average salary.
SELECT
    avg(salary)
FROM
    employees;

-- 4. Find maximum salary.
SELECT
    max(salary)
FROM
    employees;

-- 5. Find minimum salary.
SELECT
    min(salary)
FROM
    employees;

-- 6. Find total salary expense.
SELECT
    sum(salary)
FROM
    employees;

-- 7. Find difference between highest and lowest salary.
SELECT
    max(salary) - min(salary) as sal_diff
from
    employees;

-- 8. Count total employees whose salary is not null
SELECT
    count(salary)
FROM
    employees;

-- Counts only non-NULL salaries.