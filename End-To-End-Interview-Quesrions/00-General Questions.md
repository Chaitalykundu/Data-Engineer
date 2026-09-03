# Content

- [Content](#content)
- [Questions](#questions)
- [Answers](#answers)
  - [1. Tell me about yourself](#1-tell-me-about-yourself)
  - [2. Explain your project](#2-explain-your-project)
  - [Find the 2nd highest salary](#find-the-2nd-highest-salary)
  - [2. Find the top 3 highest-paid employees in each department](#2-find-the-top-3-highest-paid-employees-in-each-department)
  - [3. Find employees earning more than their department average](#3-find-employees-earning-more-than-their-department-average)
  - [4. Find duplicate records](#4-find-duplicate-records)
    - [If the duplicate is based on multiple columns](#if-the-duplicate-is-based-on-multiple-columns)
  - [5. Find the highest order for each customer](#5-find-the-highest-order-for-each-customer)
  - [8. Find customers who never placed an order](#8-find-customers-who-never-placed-an-order)
  - [13. Find monthly active users](#13-find-monthly-active-users)
  - [Calculate a 7-day rolling average of daily total sales revenue per region.](#calculate-a-7-day-rolling-average-of-daily-total-sales-revenue-per-region)

&nbsp;

&nbsp;

&nbsp;

# Questions

1. Tell me about yourself
2. Explain your project

&nbsp;

&nbsp;

# Answers

## 1. Tell me about yourself

My name is Chaitaly Kundu. I completed my B.Tech in Computer Science Engineering from Siliguri Institute of Technology. I have over 4 years of experience as a Data Engineer at Persistent Systems, mainly working with Snowflake and cloud-based data platforms.

I am SnowPro Core certified, and I have strong experience in Snowflake, Terraform, DBT, and SQL. I have worked on areas like RBAC, infrastructure automation, and CI/CD.

I started my career as a Data Engineer in 2022, where I worked on data extraction, Excel data validation, and building Streamlit applications for business teams.

Later, as a Senior Data Engineer, I worked on improving our data pipelines and automated Snowflake provisioning, which reduced deployment time from hours to minutes.

Currently, as a Lead Data Engineer, I mainly focus on infrastructure automation and Snowflake governance. I created reusable Terraform modules that reduced Snowflake setup effort by around 40%. I also manage Snowflake access and RBAC, and built a Streamlit dashboard to help manage and monitor users.

Overall, my main strength is automating data infrastructure and making Snowflake environments easier to manage and maintain.

&nbsp;

&nbsp;

## 2. Explain your project

My current project is a cloud-based data platform built on Snowflake. The main goal of the project is to bring data from different enterprise systems into one centralized and secure platform so that the data can be used for analytics and reporting.

We get data from different sources such as SQL Server, PostgreSQL, Salesforce, and AWS S3. For data ingestion, we mainly use Fivetran. Fivetran extracts data from the source systems and loads it into the raw layer of Snowflake.

After the data is loaded into Snowflake, we use dbt for transformation. We clean and standardize the raw data and then create business-ready datasets for reporting and analytics.

My main responsibility is Snowflake infrastructure automation and governance. We use Terraform to create and manage Snowflake resources such as databases, schemas, warehouses, users, roles, and grants. We also use Terraform for some AWS resources such as S3 and IAM.

I mainly work on user onboarding and access management. When a new user or team needs access to Snowflake, I first understand their requirements and then provide the appropriate role and permissions. We follow RBAC, so we assign permissions to roles instead of directly giving permissions to individual users.

I also created reusable Terraform modules for Snowflake infrastructure. Before automation, the setup process took around 10 hours. After using the reusable modules, it took around 6 hours, which reduced the setup effort by about 40%.

For deployment, we use GitHub and GitHub Actions. We create a pull request, perform code review, and then deploy the changes through our CI/CD pipeline.

On the AWS side, we use S3 for storage, IAM for secure access, and SNS for notifications.

For monitoring, we use Datadog. I mainly monitor Snowflake workloads and dynamic tables and check for failures or cases where execution takes longer than expected.

We follow Agile methodology and use Jira to manage our stories, tasks, and defects.

Overall, my major focus in the project is Snowflake infrastructure automation, RBAC, user access management, Terraform, and governance.

&nbsp;

&nbsp;

## Find the 2nd highest salary

```sql
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
```

```sql
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
```

```sql
SELECT salary
FROM (
    SELECT salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM employees
) t
WHERE rnk = 2;
```

&nbsp;

&nbsp;

## 2. Find the top 3 highest-paid employees in each department

```sql
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS rn
    FROM employees
) t
WHERE rn <= 3;
```

“I use ROW_NUMBER() to rank employees based on salary within each department. PARTITION BY department_id creates a separate ranking for every department, and then I filter the first 3 employees.”

&nbsp;

&nbsp;

## 3. Find employees earning more than their department average

```sql
SELECT *
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);
```

&nbsp;

&nbsp;

## 4. Find duplicate records

If we consider `employee_id` as the unique identifier, a basic way is:

```sql
SELECT employee_id, COUNT(*) AS count
FROM employees
GROUP BY employee_id
HAVING COUNT(*) > 1;
```

&nbsp;

### If the duplicate is based on multiple columns

For example, same `employee_name`, `department_id`, and `salary`:

```sql
SELECT employee_name, department_id, salary, COUNT(*) AS count
FROM employees
GROUP BY employee_name, department_id, salary
HAVING COUNT(*) > 1;
```

&nbsp;

&nbsp;

## 5. Find the highest order for each customer

```sql
SELECT customer_id,
       MAX(order_amount) AS highest_order
FROM orders
GROUP BY customer_id;
```

&nbsp;

&nbsp;

## 8. Find customers who never placed an order

```sql
SELECT *
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);
```

&nbsp;

&nbsp;

## 13. Find monthly active users

```sql
SELECT DATE_TRUNC('month', login_date) AS month,
       COUNT(DISTINCT user_id) AS active_users
FROM logins
GROUP BY 1
ORDER BY 1;
```

&nbsp;

&nbsp;

## Calculate a 7-day rolling average of daily total sales revenue per region.

```sql
SELECT region,
       sale_date,
       SUM(revenue) AS daily_revenue,
       AVG(SUM(revenue)) OVER (
           PARTITION BY region
           ORDER BY sale_date
           ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
       ) AS rolling_7_day_avg
FROM sales
GROUP BY region, sale_date
ORDER BY region, sale_date;
```
