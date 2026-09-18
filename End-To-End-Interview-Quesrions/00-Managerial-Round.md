# Content

- [Content](#content)
- [Questions](#questions)
- [Answers](#answers)
  - [1. Introduction](#1-introduction)
  - [2. Explain your project](#2-explain-your-project)
  - [3. Difficult issue you solved](#3-difficult-issue-you-solved)
  - [4. Why job change?](#4-why-job-change)
  - [5. Why Accenture?](#5-why-accenture)
  - [6. Why should we hire you for this role?](#6-why-should-we-hire-you-for-this-role)
  - [4. Why Snowflake? its architecture. Snowflake vs traditional databases](#4-why-snowflake-its-architecture-snowflake-vs-traditional-databases)
  - [5. Use Snowflake and dbt together in your project?](#5-use-snowflake-and-dbt-together-in-your-project)
  - [6. Why dbt instead of writing transformation SQL directly in Snowflake?](#6-why-dbt-instead-of-writing-transformation-sql-directly-in-snowflake)
  - [Investigate and resolve a 2 AM failed pipeline.](#investigate-and-resolve-a-2-am-failed-pipeline)
  - [Troubleshoot a sudden slow query or pipeline?](#troubleshoot-a-sudden-slow-query-or-pipeline)
  - [Strengths?](#strengths)
  - [weakness](#weakness)
- [After 3–5 years](#after-35-years)

&nbsp;

&nbsp;

&nbsp;

# Questions

1. Tell me about yourself
2. Explain your project
3. What was the most difficult issue you solved?
4. Why are you looking for a job change?
5. Why Accenture?
6. Why should we hire you for this role?
7. Why did you choose Snowflake? Explain its architecture and how it differs from traditional databases.
8. How did you use Snowflake and dbt together in your project?
9. Why did you use dbt instead of writing transformation SQL directly in Snowflake?

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

## 4. Why job change?

I want to take on broader responsibilities and work on more complex data engineering problems. In my current role, I’ve gained strong hands-on experience in Snowflake, Terraform, RBAC, infrastructure automation, dbt, and CI/CD, and I’ve also worked on improving operational processes through automation.

At this stage of my career, I want to move into an environment where I can further strengthen my data engineering skills, work on larger-scale data platforms, and contribute to end-to-end solutions rather than focusing mainly on infrastructure and governance.

I’m particularly interested in opportunities where I can use my experience with Snowflake, SQL, Python, dbt, Terraform, and cloud technologies while also taking on more ownership and technical challenges.

So, my reason for changing is primarily career growth, broader technical exposure, and the opportunity to contribute to larger and more complex data engineering projects.”

&nbsp;

&nbsp;

## 5. Why Accenture?

because the role aligns very closely with my current experience and the direction I want to take my career.

Accenture has a strong focus on Data & AI, cloud, and modern data platforms, and I see opportunities to work with technologies such as Snowflake, cloud platforms, dbt, and data engineering solutions. Accenture’s current Snowflake-related roles also emphasize areas such as Snowflake infrastructure, RBAC, performance optimization, data pipelines, dbt, and cloud integration, which are closely related to my experience.

Another reason is the opportunity to work on large-scale client projects. I want to move beyond only managing a single platform and gain broader exposure to different data architectures, business requirements, and engineering challenges.

I also like that Accenture emphasizes continuous learning and working with emerging technologies in Data & AI.

So, for me, Accenture is a good fit because I can contribute my existing experience in Snowflake, Terraform, RBAC, SQL, dbt, and cloud data platforms, while also expanding my experience in large-scale data engineering and modern data solutions.

&nbsp;

&nbsp;

## 6. Why should we hire you for this role?

I believe I’m a good fit for this role because my experience closely matches the technical requirements and the responsibilities I would be expected to handle.

I have 4+ years of experience in data engineering, with strong hands-on experience in Snowflake, SQL, dbt, Terraform, and cloud-based data platforms. In my current role, I work extensively on Snowflake infrastructure automation, RBAC, user access management, governance, monitoring, and troubleshooting

Another strength is that I take ownership of problems rather than only completing assigned tasks. For example, when I identified manual access-management and user-offboarding challenges, I built self-service applications to address those operational issues.

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

## Strengths?

“I would say my main strengths are ownership, problem-solving, and continuous learning.

I take ownership of my tasks and try to understand the complete problem rather than focusing only on my assigned part.

I’m also good at troubleshooting. When there is a pipeline or platform issue, I try to identify the root cause instead of just fixing the immediate problem.

Another strength is that I’m comfortable learning new technologies. I have worked with Snowflake, dbt, Terraform, and SQL, and I continuously try to improve my technical skills. I'm also focusing on learning AI related stuffs

Overall, I would say ownership and problem-solving are my strongest qualities.”

&nbsp;

&nbsp;

## weakness

One area I’m working on is that sometimes I spend more time than necessary trying to make sure a solution is completely correct, especially when I’m working on an important task.

I realized that in a project environment, balancing quality with timelines is equally important. So now I prioritize the critical requirements first, set a time limit for investigation, and communicate early if something needs additional time.

This has helped me become more efficient while still maintaining the quality of my work

&nbsp;

&nbsp;

# After 3–5 years

In the next 3–5 years, I see myself growing into a strong Senior or Lead Data Engineer who can take end-to-end ownership of data platforms and larger data engineering initiatives.

I want to deepen my expertise in areas like Snowflake, cloud data platforms, data architecture, data governance, and automation. At the same time, I’m also willing to continuously learn and explore AI and emerging AI technologies that can improve data engineering, automation, and analytics.

I want to take more responsibility in technical design decisions, mentor team members, work closely with stakeholders, and deliver solutions that have measurable business impact.

My goal is to grow not only technically, but also in terms of leadership, ownership, and adapting to new technologies like AI.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
