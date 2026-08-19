
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

## Sample data:

emp_id | emp_name | department | salary | bonus | commission | manager_id | email           | phone
-------|----------|------------|--------|-------|------------|------------|-----------------|----------
1      | Amit     | IT         | 60000  | 5000  | NULL       | 101        | amit@mail.com   | NULL
2      | Priya    | IT         | 75000  | NULL  | 3000       | 101        | NULL            | 9876543210
3      | Rahul    | HR         | 50000  | NULL  | NULL       | 102        | rahul@mail.com  | NULL
4      | Neha     | Finance    | 65000  | 7000  | 2000       | NULL       | neha@mail.com   | 9123456789
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
