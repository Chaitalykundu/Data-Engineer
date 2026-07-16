# Content

- [Content](#content)
- [Beginner Level](#beginner-level)
- [Intermediate Level](#intermediate-level)
- [Aggregate + CASE](#aggregate--case)
- [CASE + GROUP BY](#case--group-by)
- [CASE + ORDER BY](#case--order-by)
- [Advanced Level](#advanced-level)
- [⭐ Real-World Interview Questions](#-real-world-interview-questions)
- [⭐ Bonus Challenge Questions (4+ Years Data Engineer)](#-bonus-challenge-questions-4-years-data-engineer)

&nbsp;

&nbsp;

&nbsp;

# Beginner Level

1. Display employees as Adult or Minor based on age.
2. Categorize salaries as:

        High (>80000)
        Medium (50000–80000)
        Low (<50000) 3.

3. Display Experienced if experience is more than 5 years; otherwise Fresher.

4. Display Pass if marks are 40 or above; otherwise Fail.
5. Convert department codes:

        IT → Technology
        HR → Human Resource
        FIN → Finance
        Others → Other 6.

6. Male or Female based on the gender column.

7. Display Working if status = 'A'; otherwise Inactive.
8. Replace NULL salary with 0 using CASE.
9. Replace NULL email with 'Not Available'.
10. Categorize products as:

        Expensive (>10000)
        Affordable (5000–10000)
        Cheap (<5000)

&nbsp;

&nbsp;

&nbsp;

# Intermediate Level

1. Calculate bonus:

        IT → 20%
        HR → 15%
        Others → 10% 12.

2. Display tax percentage:

        Salary >100000 → 30%
        Salary >70000 → 20%
        Otherwise → 10% 13.

3. Display order status:

        Delivered
        Pending
        Cancelled
        Returned

    using user-friendly labels.

4. Display customer category:

        Gold
        Silver
        Bronze

    based on purchase amount.

5. Classify employees into:

        Junior
        Mid-Level
        Senior

    based on years of experience.

6. Display weekday/weekend based on the order date.

7. Display salary after adding bonus using CASE.

8. Show "Eligible for Promotion" if:

        Experience >5 years
        Salary <80000

    Otherwise display "Not Eligible".

9. Display "Yes" or "No" depending on
    whether an employee has a manager.
10. Display "Complete" if all mandatory fields are not NULL; otherwise "Incomplete".

&nbsp;

&nbsp;

&nbsp;

# Aggregate + CASE

1. Count IT employees using CASE.
2. Count HR employees.
3. Count male and female employees in a single query.
4. Calculate the total salary of IT
    employees.
5. Calculate the total salary of HR
    employees.
6. Find the average salary of Finance
    employees.
7. Count employees earning more than 70
8. Calculate total bonus paid to each
    department.
9. Count employees city-wise using CASE.
10. Calculate total sales for each product category.

&nbsp;

&nbsp;

&nbsp;

# CASE + GROUP BY

1.

Group employees into:

High Salary
Medium Salary
Low Salary

and count employees in each category.

1.

Count employees by age group.

1.

Display the number of orders in each order status.

1.

Find total salary for each salary category.

1.

Find average salary for each experience category.

&nbsp;

&nbsp;

&nbsp;

# CASE + ORDER BY

1.

Display IT employees first, then HR, then Finance.

1.

Sort orders so:

Pending first
Delivered second
Cancelled last 38.

Display active employees before inactive employees.

&nbsp;

&nbsp;

&nbsp;

# Advanced Level

1.

Display employee grade:

A
B
C
D

based on salary.

1.

Calculate commission using multiple conditions.

1.

Display different bonus percentages depending on both department and experience.

1.

Classify customers using purchase amount and membership type.

1.

Find the highest-paid employee in each salary category.

1.

Display salary band along with average salary for that band.

1.

Find employees whose salary category is different from their department's average salary category.

&nbsp;

&nbsp;

&nbsp;

# ⭐ Real-World Interview Questions

1.

Create a report showing:

Employee Name
Salary
Salary Category
Bonus
Tax

using one query.

1.

Convert order status codes:

P
D
C
R

into readable text.

1.

Build a dashboard query showing:

Total Employees
Active Employees
Inactive Employees
IT Employees
HR Employees

using one query.

1.

Display each employee with a risk category:

High Risk
Medium Risk
Low Risk

based on salary, experience, and department.

1.

Write a query that uses multiple CASE statements in the same SELECT clause to display:

Salary Category
Experience Category
Promotion Eligibility
Tax Slab

&nbsp;

&nbsp;

&nbsp;

# ⭐ Bonus Challenge Questions (4+ Years Data Engineer)

1. Pivot department-wise employee counts using SUM(CASE WHEN ...).
2. Calculate monthly sales for each product category using CASE.
3. Find customers who changed from Bronze to Gold.
4. Build a KPI report with conditional aggregations.
5. Classify orders into SLA buckets (On Time, Delayed, Critical).
6. Create a data quality report flagging missing mandatory fields.
7. Create an aging report for invoices (0–30, 31–60, 61–90, 90+ days).
8. Calculate churn categories for customers.
9. Generate a financial report with conditional tax calculations.
10. Create a single query that outputs multiple business metrics using CASE and aggregate functions.
