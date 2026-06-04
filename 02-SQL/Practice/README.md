# Overview

- [Overview](#overview)
- [SELECT](#select)
  - [Practice Questions](#practice-questions)
  - [Interview Questions](#interview-questions)
  - [Important Learning](#important-learning)
- [WHERE Clause \& Filtering](#where-clause--filtering)
  - [Practice Questions](#practice-questions-1)
  - [Interview Questions](#interview-questions-1)
- [ORDER BY](#order-by)
  - [Practice Questions](#practice-questions-2)
  - [Interview Questions](#interview-questions-2)
- [Aggregate Functions](#aggregate-functions)
  - [Practice Questions](#practice-questions-3)
  - [Interview Questions](#interview-questions-3)
  - [Real-Life Practice Questions](#real-life-practice-questions)
    - [Beginner](#beginner)
    - [Intermediate](#intermediate)
    - [Business Analytics Style](#business-analytics-style)
- [GROUP BY](#group-by)
  - [Practice Questions](#practice-questions-4)
  - [Interview Questions](#interview-questions-4)
- [HAVING Clause](#having-clause)
  - [Practice Questions](#practice-questions-5)
  - [Interview Questions](#interview-questions-5)
- [Real Interview-Level Practice Questions](#real-interview-level-practice-questions)
  - [Easy](#easy)
  - [Medium](#medium)
- [Best Dataset for Practice](#best-dataset-for-practice)
- [Important Interview Tip](#important-interview-tip)

&nbsp;

&nbsp;

# SELECT

## Practice Questions

| #   | Question                                                                       | Status |
| --- | ------------------------------------------------------------------------------ | ------ |
| 1   | Write a query to display all columns from Employees.                           | done   |
| 2   | Display only: employee_name, salary                                            | done   |
| 3   | Show unique department names.                                                  | done   |
| 4   | Display employees with aliases: employee_name AS Name, salary AS MonthlySalary | done   |
| 5   | Show all employees ordered by salary descending.                               | done   |
| 6   | Create output like: `Amit from Kolkata`                                        |
| 7   | Show unique: cities, departments                                               |
| 8   | Display: `Employee Rahul joined on 2024-01-10`                                 |

&nbsp;

## Interview Questions

- Difference between SELECT \* and selecting specific columns?
- What does DISTINCT do?
- Difference between WHERE and HAVING?
- What is alias in SQL?
- Why avoid SELECT \* in production?
- What happens internally when DISTINCT is used

&nbsp;

## Important Learning

Even `SELECT` alone teaches:

- projection
- reporting
- derived columns
- formatting
- deduplication
- business reporting

&nbsp;

&nbsp;

# WHERE Clause & Filtering

## Practice Questions

| #   | Question                                                | Status |
| --- | ------------------------------------------------------- | ------ |
| 1   | Find employees with salary greater than 50000.          | done   |
| 2   | Find employees from Kolkata.                            | done   |
| 3   | Find employees whose salary is between 40000 and 70000. | done   |
| 4   | Find employees from Kolkata or Delhi.                   | done   |
| 5   | Find employees NOT from Mumbai.                         | done   |
| 6   | Find employees whose name starts with A.                | done   |
| 7   | Find employees whose name ends with n.                  | done   |
| 8   | Find employees whose name contains ar.                  | done   |
| 9   | Find employees where salary is NULL.                    | done   |
| 10  | Find employees hired after 2023-01-01.                  | done   |

&nbsp;

## Interview Questions

- Difference between = and LIKE
- What is % and \_ in LIKE?
- Difference between NULL and 0
- Why salary = NULL does not work?

&nbsp;

&nbsp;

# ORDER BY

## Practice Questions

| #   | Question                                            | Status |
| --- | --------------------------------------------------- | ------ |
| 1   | Sort employees by salary ascending.                 | done   |
| 2   | Sort employees by salary descending.                | done   |
| 3   | Sort by department ascending and salary descending. | done   |
| 4   | Show top 5 highest salaries.                        | done   |
| 5   | Show second highest salary.                         | done   |

&nbsp;

## Interview Questions

- Default sort order?
- Difference between LIMIT and TOP
- How to get nth highest salary?

&nbsp;

&nbsp;

# Aggregate Functions

## Practice Questions

| #   | Question                                           | Status |
| --- | -------------------------------------------------- | ------ |
| 1   | Count total employees.                             | done   |
| 2   | Count employees in HR department.                  | done   |
| 3   | Find average salary.                               | done   |
| 4   | Find maximum salary.                               | done   |
| 5   | Find minimum salary.                               | done   |
| 6   | Find total salary expense.                         | done   |
| 7   | Find difference between highest and lowest salary. | done   |

&nbsp;

## Interview Questions

- Difference between COUNT(\*) and COUNT(column)
- Does AVG() ignore NULL?
- Can aggregate functions be used in WHERE?

&nbsp;

&nbsp;

## Real-Life Practice Questions

### Beginner

- Count total employees.
- Find total salary expense.
- Find average salary.
- Find maximum salary.
- Find minimum salary.

&nbsp;

### Intermediate

- Count employees department-wise.
- Find average salary city-wise.
- Find highest salary department-wise.
- Find departments with more than 5 employees.

&nbsp;

### Business Analytics Style

- Monthly payroll amount.
- Average salary per department.
- City with highest employee count.
- Department with highest payroll expense.

&nbsp;

&nbsp;

# GROUP BY

## Practice Questions

| #   | Question                                       | Status |
| --- | ---------------------------------------------- | ------ |
| 1   | Count employees department-wise.               |        |
| 2   | Find average salary department-wise.           |        |
| 3   | Find maximum salary city-wise.                 |        |
| 4   | Find total salary by department.               |        |
| 5   | Find departments having more than 5 employees. |        |
| 6   | Find cities where average salary > 60000.      |        |
| 7   | Count employees by joining year.               |        |

&nbsp;

## Interview Questions
 
- Why is GROUP BY used?
- What happens if non-grouped columns are selected?

&nbsp;

&nbsp;

# HAVING Clause

## Practice Questions

| #   | Question                                     | Status |
| --- | -------------------------------------------- | ------ |
| 1   | Departments having average salary > 50000.   |        |
| 2   | Cities having more than 10 employees.        |        |
| 3   | Departments where max salary > 100000.       |        |
| 4   | Find departments with total salary > 500000. |        |

&nbsp;

## Interview Questions

- Difference between WHERE and HAVING?

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

# Real Interview-Level Practice Questions

## Easy

| #   | Question                              | Status |
| --- | ------------------------------------- | ------ |
| 1   | Find duplicate emails.                |        |
| 2   | Remove duplicate rows.                |        |
| 3   | Find odd/even records.                |        |
| 4   | Find top 3 salaries.                  |        |
| 5   | Find employees hired in last 30 days. |        |

&nbsp;

## Medium

| #   | Question                                     | Status |
| --- | -------------------------------------------- | ------ |
| 1   | Find nth highest salary.                     |        |
| 2   | Find departments with no employees.          |        |
| 3   | Find salary greater than department average. |        |
| 4   | Find consecutive duplicate values.           |        |
| 5   | Find running total.                          |        |

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

# Best Dataset for Practice

Create these tables:

- Employees
- Departments
- Orders
- Customers
- Products

&nbsp;

&nbsp;

# Important Interview Tip

Most candidates memorize syntax.

Interviewers actually test:

- logical thinking
- filtering logic
- grouping logic
- edge cases
- NULL handling
- understanding of execution flow
