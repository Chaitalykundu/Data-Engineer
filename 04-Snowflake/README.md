# 15-Day Snowflake Learning Roadmap (with Projects & Practice)

| Day    | Topic                                   | What to Learn                                                        | Practice / Project                                                                           | Theory Status | Practice Status |
| ------ | --------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | ------------- | --------------- |
| **1**  | Snowflake Overview & Setup              | What is Snowflake, Cloud data warehouse, Architecture, Setup account | ✅ Create a Snowflake free trial account<br>✅ Explore UI: Warehouses, Databases, Worksheets |
| **2**  | SQL Basics Refresher                    | SELECT, WHERE, ORDER BY, GROUP BY, JOINS                             | 🧪 Write queries on a sample dataset (e.g., employee data) with filters, joins, groups       |
| **3**  | Working with Databases, Schemas, Tables | CREATE, DROP, INSERT INTO, Views                                     | 🧪 Create a database, schema, table. Insert sample rows manually via SQL                     |
| **4**  | Loading Data into Snowflake             | Internal/External stages, File formats, COPY INTO                    | ✅ Load a CSV file using the UI and `COPY INTO` from internal stage                          |
| **5**  | Virtual Warehouses & Query Profiling    | Compute concepts, scaling, suspending, `QUERY_HISTORY`               | 🧪 Create a warehouse, run queries, view execution time                                      |
| **6**  | Semi-Structured Data (JSON)             | VARIANT, FLATTEN(), working with nested JSON                         | 🧪 Load a JSON file and query specific fields with `:` and `FLATTEN()`                       |
| **7**  | Roles, Grants & Access Control (RBAC)   | Users, roles, privileges, best practices                             | 🧪 Create roles and assign privileges for schema access                                      |
| **8**  | Time Travel & Cloning                   | UNDROP, CLONE, AT/BEFORE clause                                      | 🧪 Drop a table, recover with `UNDROP`; clone it and compare results                         |
| **9**  | Streams & Tasks (Intro to CDC)          | Continuous data tracking, Scheduled tasks                            | 🧪 Set up a stream on a table and task that updates a target table                           |
| **10** | Materialized Views                      | What are they, when to use, limitations                              | 🧪 Create a materialized view and compare query time with a normal view                      |
| **11** | Snowpipe (Automated Loading)            | How it works, file arrival detection, setup basics                   | 🧪 Simulate file arrival using SnowSQL or storage stage, set up Snowpipe (doc-based)         |
| **12** | Query Optimization & Caching            | Caching layers, result reuse, clustering keys                        | 🧪 Observe query speed on first and second runs, test with clustering key                    |
| **13** | Project: E-commerce Data Warehouse      | Apply schema design: Products, Orders, Customers, Sales              | 🛠️ Design and create a Snowflake schema for an e-commerce store                              |
| **14** | Project: Incremental Loading + Stream   | Use Stream + Task to simulate CDC and data sync                      | 🛠️ Use a raw order table, and sync data into reporting table with change capture             |
| **15** | dbt + Snowflake (Optional Bonus Day)    | Set up dbt Core, connect to Snowflake, build simple models           | ✅ Build a `customers.sql` model, run `dbt run`, view compiled SQL in Snowflake              |

&nbsp;

&nbsp;

&nbsp;

# Phase wise Roadmap

| Phase               | Topic / Skill                               | Details & Notes                                                                                    |
| ------------------- | ------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| **🔰 Beginner**     | **Introduction to Snowflake**               | What is Snowflake? Cloud data warehouse architecture, key features (separation of storage/compute) |
|                     | **Snowflake Setup**                         | Create a free trial account, understand UI components: Worksheets, Databases, Warehouses           |
|                     | **Snowflake Architecture**                  | Storage, Compute, Services layers — key to understanding scaling and pricing                       |
|                     | **Basic SQL on Snowflake**                  | DDL, DML, SELECTs, filtering, sorting, aggregations                                                |
|                     | **Working with Databases, Schemas, Tables** | Creating databases, schemas, tables, views — practice with Snowflake UI or SQL                     |
|                     | **File Loading (SnowSQL/Worksheet)**        | Load CSV/JSON files from local or stage using `COPY INTO`, external stages                         |
|                     | **Virtual Warehouses**                      | How compute works in Snowflake; scaling and suspending                                             |
| **⚙️ Intermediate** | Query Performance & Optimization            | Understand partitions, clustering keys, caching, and how to use QUERY_PROFILE                      |
|                     | Semi-Structured Data (JSON, Avro, XML)      | Use VARIANT data type; flatten nested structures                                                   |
|                     | Stages & File Formats                       | Internal, external stages (S3, Azure Blob); file formats (CSV, JSON, Parquet)                      |
|                     | Data Sharing                                | Snowflake Secure Data Sharing (no data copy required)                                              |
|                     | Role-Based Access Control (RBAC)            | Users, roles, privileges, grants – key for governance and compliance                               |
|                     | Time Travel & Fail-safe                     | Data recovery features: restore dropped objects, rollback changes                                  |
|                     | Zero-Copy Cloning                           | Instantly create test/dev environments without duplicating data                                    |
| **🚀 Advanced**     | Streams & Tasks                             | Set up incremental processing pipelines (CDC-like behavior)                                        |
|                     | Snowpipe                                    | Automate real-time or near-real-time ingestion                                                     |
|                     | Materialized Views                          | Create optimized, precomputed views for faster access                                              |
|                     | Query Acceleration & Result Caching         | Understand caching layers: metadata, result set, data cache                                        |
|                     | External Tables & Data Lake Integration     | Query external data directly (e.g., from S3)                                                       |
|                     | Stored Procedures & JavaScript UDFs         | Use JavaScript for custom logic, error handling, loops                                             |
|                     | Snowpark (Optional)                         | For advanced users – write transformation logic in Python/Scala/Java using Snowpark APIs           |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
