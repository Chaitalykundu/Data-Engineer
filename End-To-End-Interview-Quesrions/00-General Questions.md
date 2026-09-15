# Content

- [Content](#content)
- [Questions](#questions)
- [Answers](#answers)
  - [1. Introduction](#1-introduction)
  - [2. Explain your project](#2-explain-your-project)
  - [3. Difficult issue you solved](#3-difficult-issue-you-solved)
  - [4. Why Snowflake? its architecture. Snowflake vs traditional databases](#4-why-snowflake-its-architecture-snowflake-vs-traditional-databases)
  - [5. Use Snowflake and dbt together in your project?](#5-use-snowflake-and-dbt-together-in-your-project)
  - [6. Why dbt instead of writing transformation SQL directly in Snowflake?](#6-why-dbt-instead-of-writing-transformation-sql-directly-in-snowflake)
  - [7. micro-partitioning and partition pruning](#7-micro-partitioning-and-partition-pruning)
    - [What is micro-partitioning?](#what-is-micro-partitioning)
    - [What is partition pruning?](#what-is-partition-pruning)
  - [5. Improve query performance?](#5-improve-query-performance)
  - [6. RBAC. design roles and access for hundreds/thousands of users?](#6-rbac-design-roles-and-access-for-hundredsthousands-of-users)
    - [How I would design RBAC for hundreds/thousands of users](#how-i-would-design-rbac-for-hundredsthousands-of-users)
  - [SCD Type. implement both in DBT/Snowflake? Which one used in your project?](#scd-type-implement-both-in-dbtsnowflake-which-one-used-in-your-project)
  - [Optimize warehouse usage and control cost?](#optimize-warehouse-usage-and-control-cost)
  - [Investigate and resolve a 2 AM failed pipeline.](#investigate-and-resolve-a-2-am-failed-pipeline)
  - [Troubleshoot a sudden slow query or pipeline?](#troubleshoot-a-sudden-slow-query-or-pipeline)
  - [IAM User and IAM Role?](#iam-user-and-iam-role)
  - [Give an IAM user access to S3](#give-an-iam-user-access-to-s3)
  - [Access Keys and when are they used](#access-keys-and-when-are-they-used)
- [Coding](#coding)
  - [Find the 2nd highest salary](#find-the-2nd-highest-salary)
  - [2. Find the top 3 highest-paid employees in each department](#2-find-the-top-3-highest-paid-employees-in-each-department)
  - [3. Find employees earning more than their department average](#3-find-employees-earning-more-than-their-department-average)
  - [4. Find duplicate records](#4-find-duplicate-records)
    - [If the duplicate is based on multiple columns](#if-the-duplicate-is-based-on-multiple-columns)
  - [5. Find the highest order for each customer](#5-find-the-highest-order-for-each-customer)
  - [8. Find customers who never placed an order](#8-find-customers-who-never-placed-an-order)
  - [13. Find monthly active users](#13-find-monthly-active-users)
  - [Calculate a 7-day rolling average of daily total sales revenue per region](#calculate-a-7-day-rolling-average-of-daily-total-sales-revenue-per-region)
  - [8. You gave a table called users with duplicate records based on email . The table has userid email and created at. Write subquery to keep only latest record for each email and delete the older one](#8-you-gave-a-table-called-users-with-duplicate-records-based-on-email--the-table-has-userid-email-and-created-at-write-subquery-to-keep-only-latest-record-for-each-email-and-delete-the-older-one)

&nbsp;

&nbsp;

&nbsp;

# Questions

1. Tell me about yourself
2. Explain your project
3. What was the most difficult issue you solved?
4. Why did you choose Snowflake? Explain its architecture and how it differs from traditional databases.
5. How did you use Snowflake and dbt together in your project?
6. Why did you use dbt instead of writing transformation SQL directly in Snowflake?
7. Explain Snowflake micro-partitioning and partition pruning.
8. How do you improve query performance?
9. Explain Snowflake RBAC. How would you design roles and access for hundreds/thousands of users?
10. What is SCD Type 1 and SCD Type 2. How would you implement SCD Type 1 and SCD Type 2 in DBT/Snowflake? Which one have you used in your project?
11. How do you optimize Snowflake warehouse usage and control cost?
12. A production pipeline failed at 2 AM. How would you investigate and resolve it?
13. How would you troubleshoot a Snowflake query or pipeline that suddenly became slow?
14. What is the difference between an IAM User and IAM Role?
15. How do you give an IAM user access to S3
16. What are Access Keys and when are they used
17. Difference between data warehouses and data lake

&nbsp;

&nbsp;

# Answers

## 1. Introduction

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

My main responsibility is Snowflake infrastructure automation and governance. We use Terraform to create and manage Snowflake resources such as databases, schemas, warehouses, users, roles,and also I handle user onboarding, role hierarchy, and access grants using RBAC. We also use Terraform for some AWS resources such as S3 and IAM.

I mainly work on user onboarding and access management. When a new user or team needs access to Snowflake, I first understand their requirements and then provide the appropriate role and permissions. We follow RBAC, so we assign permissions to roles instead of directly giving permissions to individual users.

I also created reusable Terraform modules for Snowflake infrastructure. Before automation, the setup process took around 10 hours. After using the reusable modules, it took around 6 hours, which reduced the setup effort by about 40%.

I also work on warehouse management, performance and cost optimization, monitoring, and troubleshooting.

For deployment, we use GitHub and GitHub Actions. We create a pull request, perform code review, and then deploy the changes through our CI/CD pipeline.

On the AWS side, we use S3 for storage, IAM for secure access, and SNS for notifications.

For monitoring, we use Datadog. I mainly monitor Snowflake workloads and dynamic tables and check for failures or cases where execution takes longer than expected.

We follow Agile methodology and use Jira to manage our stories, tasks, and defects.

Overall, my major focus in the project is Snowflake infrastructure automation, RBAC, user access management, Terraform, and governance.

&nbsp;

&nbsp;

## 3. Difficult issue you solved

I resolved two major operational pain points in our Snowflake environment by building two self-service Streamlit applications.

**Problem 1: Slow, Manual Data Access Process**

**The Reason**: All data asset access was managed by the Data Platform team. Whenever a team needed access to a data asset, the onboarding team had to submit a Jira service request. The VDP team would then review it, provision the foundational infrastructure, and grant access to the respective team members.

A simple access request could take days due to ticket queues and manual back-and-forth, every team depended on them for access, slowing down development

**The Solution** — Data Bridge Ops App: I built a Streamlit-in-Snowflake application where:

- Data asset owners can register their assets and define environment-specific roles
- Users can raise access requests themselves — no Jira ticket needed. They select the data asset, environment, target role, and provide a business justification
- Data owners approve or reject directly in the app with comments
- Approved grants have automatic expiration dates, so access doesn't linger forever
- Every request, approval, and rejection is fully auditable in the history tab

**The Impact**:

- Access requests that took days now take minutes
- Removed the dependency on the VDP team for routine access grants
- Gave data owners direct control over who accesses their data
- Created a complete audit trail for compliance

&nbsp;

**Problem 2: Offboarded Users Still Active in Snowflake**

**The Reason**: When employees left the company, their Snowflake accounts were not being disabled promptly. We don't have visibility on any offboarding. For this:

- former employees still had active credentials that could potentially be used to access sensitive data
- nobody knew how many stale accounts existed or how long they'd been inactive

**The Solution** — : I built a second Streamlit app named Inactive Users Dashboard that:

- Queries SNOWFLAKE.ACCOUNT_USAGE.USERS to find all enabled users who haven't logged in for a certain period (default 3 months, adjustable up to 24)
- Shows summary metrics — total inactive users, average days since last login, MFA adoption
- Provides filters by authentication type (password, RSA key, MFA) and user type (human vs. service accounts)
- Includes search to quickly find specific users
- Offers CSV export so the security team can take the list and action it immediately

**The Impact**:

- Gave the security team instant visibility into stale accounts
- Enabled proactive cleanup instead of waiting for an audit finding
- Reduced the attack surface by identifying accounts that should be disabled
- Provided evidence for compliance audits showing we actively monitor user hygiene

&nbsp;

&nbsp;

## 4. Why Snowflake? its architecture. Snowflake vs traditional databases

In our project, we were ingesting data from sources such as SQL Server and PostgreSQL and loading it into Snowflake for analytics and reporting.

The biggest advantage of snowflake is the separation of storage and compute. It allows us to scale compute independently, isolate workloads using separate warehouses, and optimize cost by suspending compute when it is not being used.

Snowflake has a three-layer architecture:

**Database Storage Layer** – The Database Storage Layer is responsible for storing and managing data. Snowflake automatically organizes table data into micro-partitions and maintains metadata that helps with efficient data access.

**Compute Layer** –
The Compute Layer in Snowflake is responsible for **query execution** and is implemented through Virtual Warehouses. Warehouses execute SQL queries, data loading, transformations, and other compute-intensive operations.

**Cloud Services Layer** – This layer manages activities such as authentication, metadata management, query parsing and optimization, access control, and transaction management.

&nbsp;

The key difference from a traditional database is the separation of storage and compute. In a traditional database, compute and storage are generally tightly coupled to the database server. If we need more processing capacity, we may need to scale the entire server, which can be expensive and can affect other workloads.

In Snowflake, storage is centralized and compute is provided through independent virtual warehouses. So, for example, our ETL workload can use one warehouse while BI users use another warehouse, and they don't directly compete for compute resources.

Snowflake also provides features such as automatic scaling, auto-suspend/auto-resume, micro-partitioning, partition pruning, time travel, zero-copy cloning, and built-in security and RBAC, which make it well suited for modern cloud data platforms.

&nbsp;

&nbsp;

## 5. Use Snowflake and dbt together in your project?

In our project, Snowflake and dbt work together as the data storage, compute, and transformation platform. Snowflake is the **compute and storage layer**; dbt is the **transformation and deployment layer**.

Data from sources such as SQL Server, PostgreSQL, Salesforce, and S3 is ingested into the RAW layer in Snowflake using Fivetran.

We then use dbt to transform the raw data inside Snowflake. Our dbt models handle activities such as data type standardization, filtering, deduplication, joins, validations, and applying business logic.

We organize the transformed data into layers such as RAW, STAGING, and CURATED, where the curated layer contains business-ready datasets used for analytics and reporting.

dbt uses SQL models and ref() to manage dependencies between models. We also use dbt tests for data-quality validation.

Snowflake provides the underlying storage and compute through virtual warehouses, while dbt manages the transformation logic, model dependencies, testing, and deployment workflow.

So, in simple terms, Fivetran loads the data into Snowflake, dbt transforms the data within Snowflake, and the final curated datasets are consumed for analytics and reporting.”

&nbsp;

**<u>How dbt Connects to Snowflake</u>**

dbt connects via a `profiles.yml` file that specifies the Snowflake account, warehouse, database, schema, and credentials (SSH key pairs or OAuth service users stored in 1Password/Vault). GitHub Actions CI/CD workflows inject these as environment variables (DBT_SNOWFLAKE_ACCOUNT, DBT_SNOWFLAKE_ROLE, etc.) at deploy time.

&nbsp;

&nbsp;

&nbsp;

## 6. Why dbt instead of writing transformation SQL directly in Snowflake?

We could write transformation SQL directly in Snowflake, but we used dbt because it gives us a structured and maintainable way to manage transformation logic.

In our project, we had multiple transformation models, so managing all the SQL independently in Snowflake would become difficult to maintain and deploy.

With dbt, we organize transformations into models, define dependencies using ref(), and dbt automatically builds the models in the correct order.

We also use dbt tests to validate data quality, such as checking for nulls, duplicates, and valid relationships.

Another important advantage is version control and CI/CD. Our dbt SQL code is stored in GitHub, so changes go through pull requests and code reviews before deployment. GitHub Actions can then validate and deploy the changes consistently across environments.

So, Snowflake is still doing the actual computation, but dbt gives us a proper framework for managing, testing, versioning, and deploying our transformation logic.
s
&nbsp;

&nbsp;

## 7. micro-partitioning and partition pruning

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

## 5. Improve query performance?

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

## SCD Type. implement both in DBT/Snowflake? Which one used in your project?

"SCD Type 1 overwrites the existing dimension record, so it maintains only the latest value and doesn't preserve history. Type 2 preserves historical changes by creating a new version of the record with effective dates and a current flag.

In DBT and Snowflake, for Type 1, I typically use an incremental model with a unique business key and the merge strategy. When a record already exists, its attributes are updated; otherwise, a new record is inserted.

For Type 2, I first identify changes in tracked attributes using an updated timestamp or hash comparison. If the current record has changed, I expire the existing record by setting the effective-to date and current flag, and then insert a new version with a new effective-from date.

In DBT, I can also use snapshots for SCD Type 2 when I need to track source-record changes. I choose Type 1 when only the current state is required and Type 2 when historical reporting or auditability is required."

&nbsp;

I have primarily worked with SCD Type 1 because our requirement was to maintain the latest employee information rather than historical versions. We used dbt transformations and incremental/merge logic in Snowflake to update existing records and insert new records. I also understand SCD Type 2 and how to implement it using dbt snapshots when historical tracking is required.

&nbsp;

&nbsp;

## Optimize warehouse usage and control cost?

I optimize Snowflake warehouse usage mainly by controlling warehouse size, auto-suspend/resume, workload separation, and monitoring. I use the smallest warehouse that meets the performance requirement, enable auto-suspend to avoid paying for idle time, and use auto-resume when needed. I separate ETL, reporting, and ad-hoc workloads into different warehouses so one workload doesn't impact another. For high-concurrency workloads, I can use multi-cluster warehouses. I also monitor query history and warehouse usage to identify expensive or long-running queries and optimize them. Finally, I use resource monitors to set credit limits and alerts to control unexpected costs.

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

## Investigate and resolve a 2 AM failed pipeline.

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

## Troubleshoot a sudden slow query or pipeline?

If a Snowflake query or pipeline suddenly becomes slow, I would first determine whether the issue is with the query itself, the warehouse, the data, or an upstream dependency. I would compare the current execution with a previously successful execution.

1. First, I check Query History and Query Profile to identify where the time is being spent — compilation, queuing, scanning, joins, aggregation, spilling, or remote/local disk I/O.

2. Second, I check the warehouse. I look at warehouse load, queued queries, warehouse size, auto-suspend/resume behavior, and whether the warehouse is overloaded. If multiple workloads are sharing the warehouse, I check for concurrency-related queuing.

3. Third, I check whether the query plan or data characteristics changed.

4. Fourth, I check Snowflake's micro-partition pruning. If the query is scanning a large percentage of the table instead of pruning unnecessary micro-partitions, I investigate the filter predicates and, for very large frequently queried tables, whether clustering needs improvement.

&nbsp;

&nbsp;

## IAM User and IAM Role?

An IAM User represents a specific person or application identity and can have long-term credentials such as a password or access keys. An IAM Role is an identity with permissions that can be temporarily assumed by users, applications, or AWS services. Roles are preferred for applications because they provide temporary credentials and avoid storing long-term access keys

&nbsp;

&nbsp;

## Give an IAM user access to S3

“To give an IAM user access to S3, I create or use an IAM policy with the required S3 permissions, such as s3:GetObject and s3:ListBucket, and attach that policy to the IAM user or, preferably, to an IAM group containing the user.”

For example, read-only access:

```json
{
  "Effect": "Allow",
  "Action": ["s3:GetObject", "s3:ListBucket"],
  "Resource": ["arn:aws:s3:::my-bucket", "arn:aws:s3:::my-bucket/*"]
}
```

&nbsp;

&nbsp;

## Access Keys and when are they used

Access keys are credentials used to authenticate programmatic access to AWS. They consist of an Access Key ID and a Secret Access Key. They are commonly used by applications, scripts, or CLI tools to interact with AWS services. However, for applications running on AWS, IAM Roles are preferred because they provide temporary credentials and avoid storing long-term access keys

&nbsp;

&nbsp;

## data warehouses and data lake

A data warehouse is a structured storage system mainly used for analytics and reporting, while a data lake is designed to store large amounts of raw data in different formats. A warehouse generally stores processed and structured data, whereas a lake can store structured, semi-structured, and unstructured data. 

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

recommended

```sql
SELECT *
FROM employees
QUALIFY ROW_NUMBER() OVER (
    PARTITION BY department_id
    ORDER BY salary DESC
) <= 3;
```

“QUALIFY is a Snowflake clause used to filter rows based on the result of window functions, similar to how WHERE filters regular columns.”

&nbsp;

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

## Calculate a 7-day rolling average of daily total sales revenue per region

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

&nbsp;

&nbsp;

## 8. You gave a table called users with duplicate records based on email . The table has userid email and created at. Write subquery to keep only latest record for each email and delete the older one

```sql
DELETE FROM users
WHERE userid NOT IN (
    SELECT userid
    FROM users
    QUALIFY ROW_NUMBER() OVER (
        PARTITION BY email
        ORDER BY created_at DESC
    ) = 1
);
```
