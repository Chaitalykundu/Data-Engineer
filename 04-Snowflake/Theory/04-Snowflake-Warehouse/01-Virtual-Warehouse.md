# Content

- [Content](#content)
- [Virtual Warehouse](#virtual-warehouse)
- [Why Snowflake Uses Virtual Warehouses](#why-snowflake-uses-virtual-warehouses)
- [Example](#example)
- [Simple memory trick](#simple-memory-trick)
- [What data processing tasks (operations) does a Virtual Warehouse perform?](#what-data-processing-tasks-operations-does-a-virtual-warehouse-perform)
  - [1. Execute SELECT Queries](#1-execute-select-queries)
    - [Runs](#runs)
    - [Example](#example-1)
  - [2. Data manipulation](#2-data-manipulation)
  - [3. Loading and unloading data](#3-loading-and-unloading-data)
    - [Example](#example-2)
    - [Warehouse processes](#warehouse-processes)
  - [4. Transform Data](#4-transform-data)
    - [Example](#example-3)
  - [5. Run ETL / ELT Pipelines](#5-run-etl--elt-pipelines)
  - [6. Execute Stored Procedures \& Tasks](#6-execute-stored-procedures--tasks)
    - [Example](#example-4)
  - [7. Support Concurrent Users](#7-support-concurrent-users)
    - [Example](#example-5)
- [Operations That Usually Do Not Require a Warehouse](#operations-that-usually-do-not-require-a-warehouse)
- [How a query uses a warehouse](#how-a-query-uses-a-warehouse)
- [Compute vs storage](#compute-vs-storage)
- [Important Points](#important-points)
- [Important interview question](#important-interview-question)

&nbsp;

&nbsp;

&nbsp;

# Virtual Warehouse

In Snowflake, Virtual Warehouse is the **compute cluster** that executes **SQL queries**, **loads data**, **transformations**, and other processing workloads.

&nbsp;

&nbsp;

Its job is to:

- Running SELECT queries
- Executing INSERT, UPDATE, DELETE and MERGE
- Loading and unloading data / files
- Transform data
- Execute ETL/ELT jobs
- Perform joins, aggregations, and analytics

&nbsp;

The Virtual Warehouse = Compute Layer.

It does NOT store data. (database stores the data)

It only provides resources (CPU, memory, temporary cache) to process data.

Data stays in centralized storage, while warehouses provide compute power.

&nbsp;

&nbsp;

# Why Snowflake Uses Virtual Warehouses

For the following features snowflake uses virtual wh

| Feature                    | Benefit                               |
| -------------------------- | ------------------------------------- |
| Separate Compute & Storage | Scale independently                   |
| Multiple Warehouses        | Teams don't block each other          |
| Auto Suspend               | Save cost                             |
| Auto Resume                | Starts automatically                  |
| Scale Up                   | Bigger warehouse → faster queries     |
| Scale Out                  | Multi-cluster → more concurrent users |

&nbsp;

&nbsp;

# Example

Suppose:

- Data Analysts run dashboards
- Data Engineers run dbt models
- Data Scientists train models

&nbsp;

You can create:

```sql
CREATE WAREHOUSE ANALYTICS_WH;
CREATE WAREHOUSE DBT_WH;
CREATE WAREHOUSE ML_WH;
```

All three warehouses access the same data, but compute independently.

&nbsp;

&nbsp;

# Simple memory trick

- Virtual Warehouse = CPU + Memory (Compute)
- Database/Schema/Table = Storage

&nbsp;

&nbsp;

&nbsp;

# What data processing tasks (operations) does a Virtual Warehouse perform?

1. Execute SELECT queries
2. Data manipulation
   1. Insert Data
   2. Update data
   3. Delete Data
   4. Merge data
3. Load data
4. Perform transformations
5. Run ETL / ELT Pipelines
6. Execute Stored Procedures & Tasks
7. Support Concurrent Users

&nbsp;

&nbsp;

## 1. Execute SELECT Queries

### Runs

```sql
SELECT * FROM SALES;
```

&nbsp;

### Example

```
User Query
   ↓
Virtual Warehouse executes
   ↓
Returns result
```

&nbsp;

&nbsp;

## 2. Data manipulation

```sql
INSERT INTO employees VALUES (101, 'Rahul', 60000);

UPDATE employees
SET salary = 65000
WHERE employee_id = 101;

DELETE FROM employees
WHERE employee_id = 101;

-- merge data
MERGE INTO EMPLOYEES AS TARGET
USING EMPLOYEE_UPDATES AS SOURCE
ON TARGET.EMPLOYEE_ID = SOURCE.EMPLOYEE_ID
WHEN MATCHED THEN
    UPDATE SET TARGET.DEPARTMENT = SOURCE.DEPARTMENT
WHEN NOT MATCHED THEN
    INSERT VALUES (
        SOURCE.EMPLOYEE_ID,
        SOURCE.EMPLOYEE_NAME,
        SOURCE.DEPARTMENT
    );
```

&nbsp;

&nbsp;

## 3. Loading and unloading data

Imports files into Snowflake.

### Example

```sql
COPY INTO CUSTOMER
FROM @stage/customers.csv;
```

&nbsp;

### Warehouse processes

```
Read files
Parse records
Insert data
```

&nbsp;

&nbsp;

## 4. Transform Data

Performs operations like:

- JOIN
- GROUP BY
- FILTER
- Aggregation
- Calculations

&nbsp;

### Example

```sql
CREATE TABLE department_summary AS
SELECT region, SUM(revenue)
FROM sales
GROUP BY region;
```

&nbsp;

&nbsp;

## 5. Run ETL / ELT Pipelines

Executes transformation pipelines.

Example with your stack:

```
Raw Data
↓
Snowflake
↓
dbt Models
↓
Analytics Tables
```

Warehouse performs the compute work.

&nbsp;

&nbsp;

## 6. Execute Stored Procedures & Tasks

Runs automated jobs.

### Example

```sql
CREATE TASK DAILY_LOAD
SCHEDULE='1 DAY'
AS
CALL LOAD_DATA();
```

Warehouse executes the task.

&nbsp;

&nbsp;

## 7. Support Concurrent Users

Multiple users can run queries simultaneously.

### Example

```
Developer A → Query
Developer B → Dashboard
ETL Job → Loading
```

All processed by warehouse

&nbsp;

&nbsp;

# Operations That Usually Do Not Require a Warehouse

Metadata-only commands generally do not require warehouse compute.

```sql
SHOW DATABASES;
SHOW SCHEMAS;
SHOW TABLES;
DESCRIBE TABLE EMPLOYEES;
CREATE DATABASE EMPLOYEE_DB;
CREATE SCHEMA EMPLOYEE_DB.RAW;
```

These operations are handled through Snowflake’s cloud-services layer.

&nbsp;

&nbsp;

# How a query uses a warehouse

Consider:

```sql
SELECT employee_id, employee_name, salary
FROM employees
WHERE department = 'IT';
```

The execution flow is:

- The user submits the SQL statement.
- The cloud services layer authenticates the user.
- Snowflake verifies role privileges.
- The SQL is parsed and optimized.
- Metadata is checked to identify relevant micro-partitions.
- The selected virtual warehouse executes the query plan.
- The warehouse reads the required data from storage or its local cache.
- Results are returned to the user.
- Eligible results may be retained in the result cache.

&nbsp;

&nbsp;

# Compute vs storage

In a traditional database, compute and storage are frequently tied together. Snowflake separates them.

Snowflake separates compute from storage.

| Compute—virtual warehouse              | Storage—database layer                             |
| -------------------------------------- | -------------------------------------------------- |
| Executes queries                       | Stores table data permanently                      |
| Provides CPU and memory                | Uses cloud object storage                          |
| Can be resized                         | Automatically scales with data                     |
| Can be suspended and resumed           | Remains available when warehouses stop             |
| Consumes compute credits while running | Incurs separate storage charges                    |
| Maintains a local cache                | Stores compressed and encrypted data               |
| Multiple warehouses can be created     | Data does not need to be copied for each warehouse |

&nbsp;

&nbsp;

&nbsp;

# Important Points

- A warehouse provides only compute resources.
- Table data is stored independently of warehouses.
- One warehouse can access multiple databases.
- Multiple warehouses can access the same data simultaneously.
- Warehouses can be resized without moving or redistributing data.
- Suspending or dropping a warehouse does not delete table data.
- Compute credits are consumed while a warehouse is running.
- A query requiring warehouse compute fails if no warehouse is selected or available.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Important interview question

1. Does Virtual Warehouse store data?

   ❌ No

2. Does Virtual Warehouse process data?

   ✅ Yes
