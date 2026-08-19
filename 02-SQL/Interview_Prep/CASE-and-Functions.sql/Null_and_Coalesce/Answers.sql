Create DATABASE practice;
CREATE SCHEMA PRACTICE.Practice_questions;

Use schema PRACTICE.Practice_questions;
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

INSERT INTO employees (emp_id, emp_name, department, salary, bonus, commission, manager_id, email, phone)
VALUES
    (1, 'Amit', 'IT', 60000, 5000, NULL, 101, 'amit@mail.com', NULL),
    (2, 'Priya', 'IT', 75000, NULL, 3000, 101, NULL, '9876543210'),
    (3, 'Rahul', 'HR', 50000, NULL, NULL, 102, 'rahul@mail.com', NULL),
    (4, 'Neha', 'Finance', 65000, 7000, 2000, NULL, 'neha@mail.com', '9123456789'),
    (5, 'Arjun', 'HR', 55000, NULL, 1500, 102, NULL, NULL);

-- Find all employees whose bonus is NULL.
SELECT * FROM EMPLOYEES where bonus is null;

-- Find all employees whose bonus is not NULL.
SELECT * FROM EMPLOYEES where bonus is not null;


-- Find employees who don't have a manager.
SELECT * FROM EMPLOYEES where manager_id is null;


-- Find employees whose email is missing.
SELECT * FROM EMPLOYEES where email is null;


-- Find employees where both email and phone are NULL.
SELECT * FROM EMPLOYEES WHERE email is null and phone is null;
SELECT * from employees where COALESCE(email,phone) IS NULL;


-- Find employees where either email or phone is NULL.
SELECT * FROM EMPLOYEES WHERE email is null or phone is null;

-- Display employee name and bonus. If bonus is NULL, display 0.
SELECT emp_name, COALESCE(bonus,'0') as bonus from employees;

-- Display employee name and email. If email is NULL, display 'Email Not Available'.
SELECT emp_name, coalesce(email, 'Email Not Available') as email from employees;
