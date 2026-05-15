-- Create database
CREATE DATABASE One_year_Exp_Interview_Practice;

-- Create schema
CREATE SCHEMA One_year_Exp_Interview_Practice.DAY1;

-- Create table Employees
CREATE
OR REPLACE TABLE One_year_Exp_Interview_Practice.DAY1.Employees (
    emp_id int primary key not null,
    name varchar(255),
    department varchar(100),
    salary decimal(10, 2),
    joining_date date
);

-- Insert data into table Employees
INSERT INTO
    One_year_Exp_Interview_Practice.DAY1.Employees (emp_id, name, department, salary, joining_date)
VALUES
    (1, 'Amit Sharma', 'HR', 45000.00, '2023-01-15'),
    (2, 'Priya Das', 'IT', 60000.50, '2022-11-20'),
    (
        3,
        'Rahul Verma',
        'Finance',
        55000.75,
        '2021-07-10'
    ),
    (4, 'Sneha Roy', 'IT', 72000.00, '2020-03-25'),
    (
        5,
        'Arjun Gupta',
        'Marketing',
        48000.25,
        '2023-06-18'
    ),
    (
        6,
        'Neha Singh',
        'Finance',
        67000.00,
        '2022-02-14'
    ),
    (7, 'Vikram Patel', 'HR', 52000.50, '2021-09-05'),
    (8, 'Ananya Sen', 'IT', 85000.00, '2019-12-01'),
    (9, 'Rohan Mehta', 'Sales', 47000.75, '2023-04-22'),
    (
        10,
        'Kavya Nair',
        'Marketing',
        53000.00,
        '2022-08-30'
    );

-- fetch the data from table Employees
SELECT
    *
FROM
    One_year_Exp_Interview_Practice.DAY1.Employees;

-- Create table Orders
CREATE
OR REPLACE TABLE One_year_Exp_Interview_Practice.DAY1.Orders (
    order_id int primary key not null,
    customer_id int,
    order_date date,
    amount decimal(10, 2)
);

-- Insert data into table ORDERS
INSERT INTO
    One_year_Exp_Interview_Practice.DAY1.Orders (order_id, customer_id, order_date, amount)
VALUES
    (101, 1, '2024-01-05', 2500.50),
    (102, 2, '2024-01-10', 1800.00),
    (103, 1, '2024-01-12', 3200.75),
    (104, 3, '2024-01-15', 4500.00),
    (105, 4, '2024-01-18', 2100.25),
    (106, 2, '2024-01-20', 3900.00),
    (107, 5, '2024-01-22', 1500.50),
    (108, 3, '2024-01-25', 5000.00),
    (109, 1, '2024-01-28', 2750.00),
    (110, 4, '2024-01-30', 4200.80);

SELECT
    *
FROM
    One_year_Exp_Interview_Practice.DAY1.Orders;

-- Create table Customers
CREATE
OR REPLACE TABLE One_year_Exp_Interview_Practice.DAY1.Customers (
    customer_id int primary key not null,
    customer_name varchar(255),
    city varchar(255)
);

-- Insert data into table Customers
INSERT INTO
    One_year_Exp_Interview_Practice.DAY1.Customers (customer_id, customer_name, city)
VALUES
    (1, 'Rahul Sharma', 'Delhi'),
    (2, 'Priya Das', 'Kolkata'),
    (3, 'Amit Kumar', 'Bangalore'),
    (4, 'Sneha Roy', 'Mumbai'),
    (5, 'Arjun Singh', 'Pune');

SELECT
    *
FROM
    One_year_Exp_Interview_Practice.DAY1.Customers;

-- -------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------
-- Questions
-- 1. Fetch all employees
SELECT
    *
FROM
    One_year_Exp_Interview_Practice.DAY1.employees;

-- 2. Find employees earning more than 50,000
SELECT
    *
FROM
    One_year_Exp_Interview_Practice.DAY1.employees
where
    salary > 50000;

-- 3. Find employees from IT department
SELECT
    *
FROM
    One_year_Exp_Interview_Practice.DAY1.employees
where
    DEPARTMENT = 'IT';

-- 4. Count total employees
SELECT
    count(*)
FROM
    One_year_Exp_Interview_Practice.DAY1.employees;

-- 5. Find average salary
SELECT
    avg(salary)
FROM
    One_year_Exp_Interview_Practice.DAY1.employees;

-- 5. Find average salary by department
SELECT
    department,
    avg(salary)
FROM
    One_year_Exp_Interview_Practice.DAY1.employees
group by
    department;

-- 6. Find highest salary
SELECT
    max(salary)
FROM
    One_year_Exp_Interview_Practice.DAY1.employees;

-- 7. Find second highest salary
-- 8. Find duplicate records
-- 9. Remove duplicates
-- 10. Find employees joined in last 30 days
-- 11. Total order amount by customer
-- 12. Customers with more than 5 orders
-- 13. Top 3 highest paid employees
SELECT
    *
FROM
    one_year_Exp_Interview_Practice.DAY1.employees
order by
    salary desc
limit
    3;

-- 14. Rank employees by salary
-- 15. Row number by department
-- 16. Find null values of department
SELECT
    *
FROM
    one_year_Exp_Interview_Practice.DAY1.employees
where
    department is null;

-- 17. Replace null values
-- 18. Join employees and departments
-- 19. Customers without orders
-- 20. Monthly sales
-- 21. Running total of sales
-- 22. Latest order per customer
-- 23. Find missing IDs
-- 24. Create incremental load logic (Very common in dbt / Snowflake interviews.)
-- 25. Merge new records (UPSERT) (Very common in Snowflake interviews.)
-- 26. Detect duplicate transactions
-- 27. Find top customer by revenue
-- 28. Pivot sales by month
-- 29. Find records changed over time (SCD Type 2 logic)30. Identify failed ETL loads
-- 30. Identify failed ETL loads
-- 1. Remove duplicate records keeping latest record
-- 3. Incremental load query
-- 4. Perform UPSERT using MERGE
-- 5. Find daily revenue
-- 6. Monthly revenue trend
-- 7. Running total revenue
-- 8. Top 3 customers by revenue
-- 9. Find customers with no orders
-- 10. Latest order per customer
-- 11. Detect missing IDs
-- 14. Calculate day-over-day growth
-- 15. Find failed ETL jobs
-- 16. Find longest inactive customers
-- 17. Count distinct users
-- 18. Sessionize user events
-- 19. Identify late arriving records
-- 20. Find top product per category
-- 21. Create rolling 7-day average
-- 22. Identify orphan records
-- 23. SCD Type 2 current records
-- 24. Find schema drift
-- 25. Calculate conversion funnel
-- 26. Detect duplicate transactions
-- 27. Partition large datasets by date
-- 28. Create fact table aggregation
-- 29. Rank products by sales
-- 30. Identify data freshness issue
SHOW RESOURCE MONITORS LIKE 'DAILY_3_CREDIT_LIMIT';

ALTER RESOURCE MONITOR DAILY_3_CREDIT_LIMIT
SET
    CREDIT_QUOTA = 5;

-- This setup is useful for practicing interview questions like:
-- JOIN customers and orders
-- Find customers with highest total orders
-- Customers with no orders
-- Monthly sales analysis
-- Aggregate functions (SUM, AVG, COUNT)
-- Ranking top customers by revenue