# Overview

- [Overview](#overview)
- [Introduce Yourself](#introduce-yourself)
  - [Strong Answer Structure](#strong-answer-structure)
    - [Present](#present)
    - [Past](#past)
    - [Future](#future)
  - [Example](#example)
- [Current Project](#current-project)
  - [Answer Structure](#answer-structure)
  - [Follow-up Questions](#follow-up-questions)
  - [Example](#example-1)
  - [Follow-up](#follow-up)
- [Data Ingestion](#data-ingestion)
  - [Questions](#questions)
  - [Expected explanation](#expected-explanation)
- [SQL Questions](#sql-questions)
- [Data Warehousing](#data-warehousing)
  - [Question](#question)
  - [Real example](#real-example)
- [Snowflake Deep Dive](#snowflake-deep-dive)
  - [Question](#question-1)
- [DBT Questions](#dbt-questions)
  - [Question](#question-2)
- [Terraform Questions](#terraform-questions)
  - [Question](#question-3)
- [Security Questions](#security-questions)
  - [Question](#question-4)
- [Performance Optimization](#performance-optimization)
  - [Question](#question-5)
- [Production Support](#production-support)
  - [Question](#question-6)
- [Scenario-Based Questions](#scenario-based-questions)
  - [Question](#question-7)
- [Data Modeling](#data-modeling)
  - [Question](#question-8)
  - [Example](#example-2)
- [System Design Round](#system-design-round)
  - [Question](#question-9)
    - [Requirements](#requirements)
    - [Expected](#expected)
- [Behavioral Questions](#behavioral-questions)
  - [17. Questions Specifically Relevant to Your Background](#17-questions-specifically-relevant-to-your-background)

&nbsp;

&nbsp;

&nbsp;

# Introduce Yourself

1. Tell me about yourself.

&nbsp;

## Strong Answer Structure

### Present

- Current role
- Experience
- Primary technologies

### Past

- Previous experience
- Key projects

### Future

- Why you're looking for a change

&nbsp;

## Example

```md
I have around 4 years of experience in Data Engineering and currently work as a Senior Software Engineer at Persistent Systems. My primary expertise is in Snowflake, DBT, SQL, Terraform, and cloud-based data platforms.

In my current project, I work on building and maintaining data pipelines, implementing Snowflake RBAC automation, developing DBT models, and supporting analytics use cases. Recently, I have been involved in automating role-based access control and data asset provisioning using Terraform.

Before this, I worked on front-end development using Angular, which gave me a strong understanding of application development. Currently, I am focused on growing as a Data Engineer and looking for opportunities where I can work on large-scale data platforms and advanced analytics solutions.
```

&nbsp;

&nbsp;

2. What justified the promotion from Senior Software Engineer to Lead Software Engineer?

Prepare concrete answers around:

- Ownership of Snowflake platform
- Terraform automation
- Governance implementation
- Mentoring engineers
- Sprint leadership
- Architecture decisions

because "Lead" is a significant jump and interviewers will probe this.

&nbsp;

&nbsp;

# Current Project

1. Can you explain your current project?

&nbsp;

## Answer Structure

```
Client
    ↓
Business Problem
    ↓
Architecture
    ↓
Your Responsibilities
    ↓
Technologies
    ↓
Results
```

&nbsp;

## Follow-up Questions

- What is the business objective?
- Who are the users?
- How much data do you process?
- What is your role? 3. Architecture Discussion

&nbsp;

&nbsp;

1. Walk me through your architecture.

## Example

```
Source Systems
↓
Landing Layer
↓
Snowflake
↓
DBT
↓
Data Marts
↓
Power BI
```

&nbsp;

## Follow-up

1. Why Snowflake?
2. Why DBT?
3. Why not ETL?

&nbsp;

&nbsp;

# Data Ingestion

## Questions

1. How is data loaded into Snowflake?

   Follow-up
   - Batch or real-time?
   - Snowpipe?
   - External Stage?
   - Internal Stage?

2. What happens when a file arrives?

&nbsp;

## Expected explanation

```
File Arrives
↓
Stage
↓
Snowpipe
↓
Raw Table
↓
DBT Transformation
↓
Data Mart
```

&nbsp;

&nbsp;

# SQL Questions

1. Find duplicate customers.
2. Find the second-highest salary.
3. Calculate monthly revenue.
4. Find customers who didn't place orders in the last 90 days.
5. Difference between:
   - ROW_NUMBER
   - RANK
   - DENSE_RANK

&nbsp;

&nbsp;

# Data Warehousing

## Question

1. Why do we need a Data Warehouse?
2. Why not use OLTP directly?
3. Difference between OLTP and OLAP.
4. Explain Star Schema.
5. Explain Snowflake Schema.
6. Fact vs Dimension Table.
7. What is SCD Type 2?

&nbsp;

## Real example

- Customer changes city
- Old record expires
- New record inserted

&nbsp;

&nbsp;

# Snowflake Deep Dive

## Question

How does Snowflake store data?

Expected:

```
Cloud Storage
↓
Micro-partitions
↓
Metadata
↓
Virtual Warehouse
```

Question

What are micro-partitions?

Question

What is partition pruning?

Question

How does clustering work?

Question

What is Time Travel?

Question

What is Fail-safe?

Question

Difference between:

Temporary
Transient
Permanent Tables
Question

What is Zero-Copy Cloning?

&nbsp;

&nbsp;

# DBT Questions

## Question

1. Why DBT?
2. Explain your DBT workflow.

   Example:

   ```
   Raw Layer
   ↓
   Staging Models
   ↓
   Intermediate Models
   ↓
   Mart Models
   ```

3. What tests have you implemented?
4. What is an Incremental Model?
5. How do you deploy DBT code?
6. How do you handle failures?

&nbsp;

&nbsp;

# Terraform Questions

Since you've worked on RBAC automation:

## Question

1. Why Terraform?
2. How did you implement RBAC?
3. Explain role hierarchy.

   Example:

   ```
   SYSADMIN
   ↓
   DATA_ENGINEER
   ↓
   ANALYST
   ```

4. How are grants managed?
5. How do you prevent privilege escalation?
6. How do you deploy Terraform?

&nbsp;

&nbsp;

# Security Questions

## Question

1. What is RBAC?
2. Difference between RBAC and DAC.
3. How do you secure Snowflake?

   Expected:
   - RBAC
   - Network Policies
   - MFA
   - Least Privilege

4. Why do we whitelist IPs?

&nbsp;

&nbsp;

# Performance Optimization

## Question

1. A query takes 2 hours. What do you do?

   Expected steps:

   ```
   Query Profile
   ↓
   Identify Bottleneck
   ↓
   Partition Pruning
   ↓
   Warehouse Optimization
   ↓
   Join Optimization
   ```

2. How do you optimize Snowflake costs?
3. How do you reduce warehouse usage?
4. How do you optimize DBT runs?

&nbsp;

&nbsp;

# Production Support

## Question

1. Tell me about a production issue.

   Answer format:

   ```
   Situation
   ↓
   Investigation
   ↓
   Root Cause
   ↓
   Fix
   ↓
   Prevention
   ```

2. A pipeline failed at 2 AM. What would you do?
3. Source data is delayed. hat would you do?

&nbsp;

&nbsp;

# Scenario-Based Questions

## Question

1. A source sends duplicate records. How would you handle it?

2. Business reports incorrect revenue. How would you investigate?
3. A DBT model suddenly doubles the record count. What would you check?
4. A user lost access after RBAC deployment. How would you troubleshoot?

&nbsp;

&nbsp;

# Data Modeling

## Question

Design a data model for:

- Amazon
- Netflix
- Banking
- Healthcare

&nbsp;

## Example

For Amazon:

- Fact_Orders
- Dim_Customer
- Dim_Product
- Dim_Date
- Dim_Seller

&nbsp;

&nbsp;

# System Design Round

## Question

Design a Data Platform for an E-Commerce Company.

&nbsp;

### Requirements

- 10M orders/day
- Near real-time analytics
- Historical reporting

&nbsp;

### Expected

```
Applications
↓
Kafka
↓
Landing Layer
↓
Snowflake
↓
DBT
↓
Data Mart
↓
Power BI
```

&nbsp;

&nbsp;

# Behavioral Questions

1. Tell me about a challenging project.
2. Tell me about a conflict with a team member.
3. Tell me about a mistake you made.
4. How do you handle deadlines?
5. How do you prioritize tasks?

&nbsp;

&nbsp;

## 17. Questions Specifically Relevant to Your Background

Expect questions such as:

- Explain Snowflake RBAC implementation.
- Why Terraform for RBAC automation?
- Explain your DBT project structure.
- How do Streams and Tasks work?
- Explain Snowpipe.
- How do you perform incremental loading?
- How do you manage Dev, QA, and Prod environments?
- How do you handle schema changes?
- How do you monitor data quality?
- What would happen if a warehouse is suspended while a query is running?

&nbsp;
