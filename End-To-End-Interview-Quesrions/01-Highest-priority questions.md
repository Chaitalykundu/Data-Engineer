# Overview

- [Overview](#overview)
- [Questions](#questions)
- [Answers](#answers)
  - [6. How do micro-partitioning and partition pruning work in Snowflake?](#6-how-do-micro-partitioning-and-partition-pruning-work-in-snowflake)
  - [7. When would you define a clustering key?](#7-when-would-you-define-a-clustering-key)

&nbsp;

&nbsp;

&nbsp;

# Questions

[Accenture Custom Software Engineer](https://www.accenture.com/in-en/careers/jobdetails?id=ATCI-5520199-S2014779_en&title=Custom+Software+Engineer&c=car_glb_curateddailycondialogbox_12220771&n=otc_0621)

1. Explain an end-to-end data pipeline you designed and implemented.
2. How did you use Snowflake and dbt together in your project?
3. What is your role and what exactly do you work on?
4. Why did you choose Snowflake for your data platform?
5. Explain the architecture of your data platform.
6. Explain the complete data flow from SQL Server/PostgreSQL to Snowflake.
7. What is your role in Terraform?
8. How did you implement Snowflake user onboarding using Terraform?
9. Explain the staging, intermediate, and mart layers in your dbt project.
10. How do you troubleshoot a failed data pipeline in production?
11. How do you optimize a slow-running Snowflake query?
12. How do micro-partitioning and partition pruning work in Snowflake?
13. When would you define a clustering key?
14. How do you implement incremental processing in dbt?
15. How do you prevent duplicate records during incremental loads?
16. Explain the CI/CD pipeline used to deploy dbt or Snowflake changes.
17. How do you manage dev, test, and production environments?
18. How do you test data transformations before production deployment?
19. How would you design a self-service data platform?
20. What is data governance, and how have you implemented it?
21. What is Master Data Management, and how is it different from data governance?
22. How do you increase users’ trust in a data platform?
23. Describe a production issue you diagnosed and permanently fixed.
24. How do you create standard operating procedures for recurring failures?
25. How do you handle schema changes from source systems?
26. How would you migrate data from PostgreSQL or SQL Server to Snowflake?
27. How did you implement RBAC using Terraform?
28. How did you automate infrastructure provisioning?
29. What challenges did you face in your project?
30. How did you improve pipeline reliability?
31. How did you reduce infrastructure setup time by 40%?
32. How do you monitor your pipelines?
33. How do you monitor Snowflake?
34. How do you use Datadog in your project?
35. Tell me about a performance issue you solved.
36. What was your biggest technical contribution to the project?

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Answers

### 6. How do micro-partitioning and partition pruning work in Snowflake?

When we load or insert data into Snowflake, it automatically breaks data into small blocks of storage. These are called **micro-partitions**.

Each micro-partition:

- Contains ~16 MB of compressed data and 50 MB–500 MB uncompressed data
- Data is stored in columnar format
- Maintains metadata such as:
  - Minimum and maximum value per column
  - Number of distinct values
  - NULL count
  - Other statistics used for optimization

&nbsp;

**Partition pruning**

Partition pruning is the process of skipping micro-partitions that cannot contain data required by a query.

```sql
SELECT order_id, region
FROM sales
WHERE order_date BETWEEN '2026-03-01' AND '2026-04-30';
```

Snowflake examines the micro-partition metadata:

- MP1: January–February → skipped
- MP2: March–April → scanned
- MP3: May–June → skipped
- MP4: July–August → skipped

Only MP2 needs to be read.

&nbsp;

Snowflake generally performs:

- **Metadata lookup**: Checks the minimum and maximum ORDER_DATE stored for each micro-partition.
- **Partition pruning**: Eliminates partitions whose ranges cannot include 2026-07-01.
- **Column pruning**: Reads only ORDER_ID, REGION, and ORDER_DATE, rather than every column.
- **Filtering**: Applies the exact condition to rows within the remaining partitions.
- **Result generation**: Returns ORDER_ID and REGION.

&nbsp;

When you run:

```sql
SELECT *
FROM sales
WHERE order_date = '2026-02-15';
```

Snowflake uses `ORDER_DATE` metadata because that column appears in the filter.

For another query:

```sql
SELECT *
FROM sales
WHERE customer_id = 1001;
```

Snowflake uses the `CUSTOMER_ID` metadata instead.

Therefore, the column used for pruning is determined by the query filter, not by a predefined micro-partition column.

&nbsp;

&nbsp;

&nbsp;

### 7. When would you define a clustering key?

&nbsp;

&nbsp;

&nbsp;

&nbsp;
