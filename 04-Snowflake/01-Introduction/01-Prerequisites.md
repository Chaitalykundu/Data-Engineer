# Prerequisites for Learning Snowflake

| Skill/Knowledge Area                   | Importance             | Notes                                                             |
| -------------------------------------- | ---------------------- | ----------------------------------------------------------------- |
| SQL                                    | ⭐⭐⭐⭐⭐ (Essential) | dbt core is SQL-based                                             |
| Data Warehousing Concepts              | ⭐⭐⭐⭐               | Helps in modeling and understanding OLAP systems                  |
| Cloud Fundamentals                     | ⭐⭐⭐                 | Useful as Snowflake runs on AWS, Azure, and GCP                   |
| Python (or another scripting language) | ⭐⭐⭐                 | Useful for automation, data engineering, Snowpark, or Airflow     |
| Git / Version Control                  | ⭐⭐⭐                 | Essential for working with dbt, CI/CD, and collaborative projects |
| Data Modeling (Star/Snowflake schema)  | ⭐⭐⭐⭐               | Important for designing performant and scalable models            |
| ETL/ELT Concepts                       | ⭐⭐⭐⭐               | Understand the data flow; Snowflake prefers ELT                   |
| dbt (Data Build Tool)                  | ⭐⭐⭐                 | Pairs well with Snowflake for transformation                      |
| Basic Shell/Bash Scripting             | ⭐⭐                   | Helpful for automating tasks and workflows                        |
| Data Governance & Access Control       | ⭐⭐                   | Learn about roles, RBAC, and grants in Snowflake                  |
| Excel or BI Tool Basics (Optional)     | ⭐⭐                   | Useful for visualizing Snowflake data outputs                     |

&nbsp;

&nbsp;

&nbsp;

| Skills                                           | Why                                                                                          | We should know                                |
| ------------------------------------------------ | -------------------------------------------------------------------------------------------- | --------------------------------------------- |
| SQL                                              | SQL is the primary language used in Snowflake to query and manipulate data.                  | SELECT, INSERT, UPDATE, DELETE                |
|                                                  |                                                                                              | Joins (INNER, LEFT, RIGHT, FULL)              |
|                                                  |                                                                                              | Subqueries & CTEs                             |
|                                                  |                                                                                              | Aggregate functions (COUNT, SUM, GROUP BY)    |
|                                                  |                                                                                              | Window functions                              |
|                                                  |                                                                                              | Data types and functions                      |
| Basics of Data Warehousing                       | Snowflake is a data warehouse platform.                                                      | OLAP vs OLTP                                  |
|                                                  |                                                                                              | Facts and Dimensions                          |
|                                                  |                                                                                              | Star and Snowflake Schemas                    |
|                                                  |                                                                                              | ETL vs ELT                                    |
| Cloud Fundamentals                               | Snowflake is cloud-native and runs on AWS, Azure, and GCP.                                   | Basics of cloud services (storage, compute)   |
|                                                  |                                                                                              | IAM (Identity and Access Management)          |
|                                                  |                                                                                              | Buckets / Blob Storage (S3, Azure Blob, etc.) |
| Basic Programming Knowledge                      | Helps when using Snowflake with tools like Python (e.g., with Snowpark, Airflow, dbt, etc.). | Python (for scripting, data pipelines)        |
|                                                  |                                                                                              | Bash or Shell (for automation)                |
| Version Control (Basic Git)                      | Useful when using Snowflake with tools like dbt, CI/CD, and collaborative environments.      |
| Data Pipeline / ETL Tools (Optional but Helpful) | Snowflake often works as the target in data pipelines.                                       | dbt (very popular with Snowflake)             |
|                                                  |                                                                                              | Apache Airflow                                |
|                                                  |                                                                                              | Fivetran, Matillion, or other ELT tools       |
| Basic Data Modeling Concepts                     | To design efficient and scalable data warehouses.                                            | Normalization vs Denormalization              |
|                                                  |                                                                                              | Slowly Changing Dimensions (SCD)              |
|                                                  |                                                                                              |                                               |
