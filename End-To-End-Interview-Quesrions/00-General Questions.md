# Content

- [Content](#content)
- [Questions](#questions)
- [Answers](#answers)
  - [1. Tell me about yourself](#1-tell-me-about-yourself)
  - [2. Explain your project](#2-explain-your-project)
  - [3. Why Snowflake? its architecture. Snowflake vs traditional databases.](#3-why-snowflake-its-architecture-snowflake-vs-traditional-databases)
  - [4. micro-partitioning and partition pruning.](#4-micro-partitioning-and-partition-pruning)
    - [What is micro-partitioning?](#what-is-micro-partitioning)
    - [What is partition pruning?](#what-is-partition-pruning)
  - [5. How do you improve query performance?](#5-how-do-you-improve-query-performance)
  - [6. RBAC. design roles and access for hundreds/thousands of users?](#6-rbac-design-roles-and-access-for-hundredsthousands-of-users)
    - [How I would design RBAC for hundreds/thousands of users](#how-i-would-design-rbac-for-hundredsthousands-of-users)
  - [A production pipeline failed at 2 AM. How would you investigate and resolve it?](#a-production-pipeline-failed-at-2-am-how-would-you-investigate-and-resolve-it)
  - [SCD Type 1 and SCD Type 2. implement SCD Type 1 and SCD Type 2 in DBT/Snowflake?](#scd-type-1-and-scd-type-2-implement-scd-type-1-and-scd-type-2-in-dbtsnowflake)
  - [How do you optimize Snowflake warehouse usage and control cost?](#how-do-you-optimize-snowflake-warehouse-usage-and-control-cost)
  - [How would you troubleshoot a Snowflake query or pipeline that suddenly became slow?](#how-would-you-troubleshoot-a-snowflake-query-or-pipeline-that-suddenly-became-slow)
- [Coding](#coding)
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
3. Why did you choose Snowflake? Explain its architecture and how it differs from traditional databases.
4. Explain Snowflake micro-partitioning and partition pruning.
5. How do you improve query performance?
6. Explain Snowflake RBAC. How would you design roles and access for hundreds/thousands of users?
7. What is SCD Type 1 and SCD Type 2. How would you implement SCD Type 1 and SCD Type 2 in DBT/Snowflake?

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

## 3. Why Snowflake? its architecture. Snowflake vs traditional databases.

In our project, we were ingesting data from sources such as SQL Server and PostgreSQL and loading it into Snowflake for analytics and reporting.

The biggest advantage is the separation of storage and compute. It allows us to scale compute independently, isolate workloads using separate warehouses, and optimize cost by suspending compute when it is not being used.

Snowflake has a three-layer architecture:

**Database Storage Layer** – The Database Storage Layer is responsible for persistently **storing all data** (structured or semi-structured) in an **optimized, compressed, and columnar format.**

**Compute Layer** –
The Compute Layer in Snowflake is responsible for **query execution** and is implemented through Virtual Warehouses.

**Cloud Services Layer** – This layer manages activities such as authentication, metadata management, query parsing and optimization, access control, and transaction management.

The key difference from a traditional database is the separation of storage and compute. In a traditional database, compute and storage are generally tightly coupled to the database server. If we need more processing capacity, we may need to scale the entire server, which can be expensive and can affect other workloads.

In Snowflake, storage is centralized and compute is provided through independent virtual warehouses. So, for example, our ETL workload can use one warehouse while BI users use another warehouse, and they don't directly compete for compute resources.

Snowflake also provides features such as automatic scaling, auto-suspend/auto-resume, micro-partitioning, partition pruning, time travel, zero-copy cloning, and built-in security and RBAC, which make it well suited for modern cloud data platforms.

&nbsp;

&nbsp;

## 4. micro-partitioning and partition pruning.

### What is micro-partitioning?

When data is loaded into a Snowflake table, Snowflake automatically divides the table into small, contiguous storage units called micro-partitions.

You don't manually create these partitions like traditional databases.

For each micro-partition, Snowflake maintains metadata such as:

- Minimum and maximum values
- Number of distinct values
- NULL information
- Other statistics used by the optimizer

&nbsp;

### What is partition pruning?

Partition pruning is the process of eliminating micro-partitions that cannot contain the required data before Snowflake scans them.

```sql
SELECT SUM(amount)
FROM orders
WHERE order_date BETWEEN '2026-08-01' AND '2026-08-31';
```

&nbsp;

## 5. How do you improve query performance?

1. Make filters pruning-friendly
2. Check Query Profile... I would check:
   - Partitions scanned
   - Partitions total
   - Bytes scanned
   - Expensive joins
   - Aggregations
   - Spilling
   - Queuing

3. Avoid unnecessary data: - Don't use: `SELECT *`
4. Optimize joins
5. Consider clustering for large tables

&nbsp;

&nbsp;

## 6. RBAC. design roles and access for hundreds/thousands of users?

Snowflake RBAC, or Role-Based Access Control, is a security model where permissions are assigned to roles, and roles are assigned to users. Users don't normally receive object privileges directly.

The basic hierarchy is:

```
User → Role → Privileges → Objects
```

&nbsp;

For example, instead of granting `SELECT` directly to 500 users, I would create an `ANALYST_ROLE`, grant the required privileges to that role, and assign the role to the users.

&nbsp;

### How I would design RBAC for hundreds/thousands of users

I would not create one role per user. That doesn't scale and becomes difficult to audit.

Instead, I would use a role hierarchy based on job function and access level.

```
                 ACCOUNTADMIN
                      │
                SECURITYADMIN
                      │
              DATA_PLATFORM_ADMIN
                      │
          ┌───────────┴───────────┐
          │                       │
      DATA_ENGINEER          DATA_ANALYST
          │                       │
    ETL / Transform          Read Reports
          │
      DEVELOPER_ROLE
```

&nbsp;

&nbsp;

## A production pipeline failed at 2 AM. How would you investigate and resolve it?

If a production pipeline fails at 2 AM, my first priority is to understand the impact, identify the exact failure point, and restore the pipeline safely. I would avoid making random changes in production.

1. Check the monitoring/alert
   - Which pipeline/job failed?
   - When did it fail?
   - Which task or DBT model failed?
   - Is it a code failure, data issue, infrastructure issue, or source-system issue?
2. Check the pipeline logs
   - I would inspect the failed task's logs and error message.
   - I would determine the first failed component, rather than only looking at the final downstream failure.
3. Check Snowflake: If the failure is in Snowflake, I would check:
   - Query History
   - Query error messages
   - Warehouse availability/load
   - Permissions/RBAC
   - Recent schema changes
   - Data volume or unexpected data
   - Whether upstream tables were successfully populated
4. Check upstream dependencies
5. Fix and recover
   - Once I identify the root cause, I would apply the smallest safe fix. If the issue is transient—for example, a temporary connection failure—I would retry the failed task

&nbsp;

&nbsp;

## SCD Type 1 and SCD Type 2. implement SCD Type 1 and SCD Type 2 in DBT/Snowflake?

"SCD Type 1 overwrites the existing dimension record, so it maintains only the latest value and doesn't preserve history. Type 2 preserves historical changes by creating a new version of the record with effective dates and a current flag.

In DBT and Snowflake, for Type 1, I typically use an incremental model with a unique business key and the merge strategy. When a record already exists, its attributes are updated; otherwise, a new record is inserted.

For Type 2, I first identify changes in tracked attributes using an updated timestamp or hash comparison. If the current record has changed, I expire the existing record by setting the effective-to date and current flag, and then insert a new version with a new effective-from date.

In DBT, I can also use snapshots for SCD Type 2 when I need to track source-record changes. I choose Type 1 when only the current state is required and Type 2 when historical reporting or auditability is required."

&nbsp;

&nbsp;

## How do you optimize Snowflake warehouse usage and control cost?

1. Right-size the warehouse
2. Use Auto-Suspend and Auto-Resume
3. Monitor warehouse utilization - I monitor:
   - Warehouse load
   - Query execution time
   - Queued queries
   - Number of concurrent queries
   - Credits consumed
   - Warehouse size
   - Spillage
   - Query frequency
4. Optimize SQL before increasing warehouse size
5. Use separate warehouses for different workloads
6. Use multi-cluster warehouses for concurrency
7. Use appropriate scaling

&nbsp;

&nbsp;

## How would you troubleshoot a Snowflake query or pipeline that suddenly became slow?

Interview Answer

If a Snowflake query or pipeline suddenly becomes slow, I would first determine whether the issue is with the query itself, the warehouse, the data, or an upstream dependency. I would compare the current execution with a previously successful execution.

1. First, I check Query History and Query Profile to identify where the time is being spent — compilation, queuing, scanning, joins, aggregation, spilling, or remote/local disk I/O.

2. Second, I check the warehouse. I look at warehouse load, queued queries, warehouse size, auto-suspend/resume behavior, and whether the warehouse is overloaded. If multiple workloads are sharing the warehouse, I check for concurrency-related queuing.

3. Third, I check whether the query plan or data characteristics changed.

4. Fourth, I check Snowflake's micro-partition pruning. If the query is scanning a large percentage of the table instead of pruning unnecessary micro-partitions, I investigate the filter predicates and, for very large frequently queried tables, whether clustering needs improvement.

&nbsp;

&nbsp;

# Coding

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
