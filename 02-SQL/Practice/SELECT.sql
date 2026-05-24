-- Create Database
CREATE DATABASE SQL_PRACTICE;

-- Use Database
USE SQL_PRACTICE;

-- Create Employees Table
CREATE TABLE
    Employees (
        employee_id INT PRIMARY KEY,
        employee_name VARCHAR(100),
        department VARCHAR(50),
        salary DECIMAL(10, 2),
        joining_date DATE,
        city VARCHAR(50)
    );

-- Insert Dummy Data
INSERT INTO
    Employees (
        employee_id,
        employee_name,
        department,
        salary,
        joining_date,
        city
    )
VALUES
    (
        101,
        'Amit Sharma',
        'HR',
        45000,
        '2022-01-15',
        'Delhi'
    ),
    (
        102,
        'Priya Das',
        'IT',
        75000,
        '2021-06-10',
        'Kolkata'
    ),
    (
        103,
        'Rahul Verma',
        'Finance',
        68000,
        '2020-03-20',
        'Mumbai'
    ),
    (
        104,
        'Sneha Roy',
        'IT',
        82000,
        '2019-11-05',
        'Bangalore'
    ),
    (
        105,
        'Arjun Singh',
        'Sales',
        55000,
        '2023-02-01',
        'Pune'
    ),
    (
        106,
        'Neha Kapoor',
        'HR',
        47000,
        '2021-08-18',
        'Delhi'
    ),
    (
        107,
        'Rohit Sen',
        'Finance',
        72000,
        '2020-09-12',
        'Chennai'
    ),
    (
        108,
        'Ananya Paul',
        'Marketing',
        60000,
        '2022-05-25',
        'Kolkata'
    );

-- 1. Write a query to display all columns from Employees.
SELECT
    *
FROM
    Employees;

-- 2. Display only:
--    - employee_name
--    - salary
SELECT
    employee_name,
    salary
from
    Employees;

-- 3. Show unique department names.
SELECT DISTINCT
    department
from
    Employees;

-- 4. Display employees with aliases:
--    - employee_name AS Name
--    - salary AS MonthlySalary
SELECT
    employee_name AS Name,
    salary AS MonthlySalary
from
    Employees;

-- 5. Show all employees  ordered by salary descending.
SELECT
    *
from
    employees
order by
    salary desc;