# Content

- [Content](#content)
- [Virtual Warehouse](#virtual-warehouse)
- [Snowflake Architecture](#snowflake-architecture)
- [Why Snowflake Uses Virtual Warehouses](#why-snowflake-uses-virtual-warehouses)
- [Example](#example)
- [Simple memory trick](#simple-memory-trick)
- [What data processing tasks does a Virtual Warehouse perform?](#what-data-processing-tasks-does-a-virtual-warehouse-perform)
  - [1. Execute SQL Queries](#1-execute-sql-queries)
    - [Runs](#runs)
    - [Example](#example-1)
  - [2. Load Data](#2-load-data)
    - [Example](#example-2)
    - [Warehouse processes](#warehouse-processes)
  - [3. Transform Data](#3-transform-data)
    - [Example:](#example-3)
  - [4. Run ETL / ELT Pipelines](#4-run-etl--elt-pipelines)
  - [5. Execute Stored Procedures \& Tasks](#5-execute-stored-procedures--tasks)
    - [Example:](#example-4)
  - [6. Support Concurrent Users](#6-support-concurrent-users)
    - [Example:](#example-5)
- [Important interview question](#important-interview-question)

&nbsp;

&nbsp;

&nbsp;

# Virtual Warehouse

In Snowflake, Virtual Warehouse is the **compute cluster** that executes **SQL queries**, **loads data**, **transformations**, and other processing workloads.

&nbsp;

&nbsp;

Its job is to:

- Run SQL queries
- Load data
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

# Snowflake Architecture

```
                +----------------------+
                |   Cloud Services     |
                | Metadata, Security   |
                +----------+-----------+
                           |
      ------------------------------------------
      |                                        |
      v                                        v

+-------------------+              +-------------------+
| Virtual Warehouse |              | Virtual Warehouse |
| (Compute)         |              | (Compute)         |
| BI Queries        |              | ELT / DBT Jobs    |
+---------+---------+              +---------+---------+
          \                                 /
           \                               /
            v                             v

      +--------------------------------------+
      |      Centralized Data Storage        |
      | Tables, Files, Historical Data       |
      +--------------------------------------+
```

&nbsp;

&nbsp;

# Why Snowflake Uses Virtual Warehouses

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

# What data processing tasks does a Virtual Warehouse perform?

## 1. Execute SQL Queries

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

## 2. Load Data

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

## 3. Transform Data

Performs operations like:

- JOIN
- GROUP BY
- FILTER
- Aggregation
- Calculations

&nbsp;

### Example

```sql
SELECT region, SUM(revenue)
FROM sales
GROUP BY region;
```

&nbsp;

&nbsp;

## 4. Run ETL / ELT Pipelines

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

## 5. Execute Stored Procedures & Tasks

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

## 6. Support Concurrent Users

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

&nbsp;

&nbsp;

&nbsp;

# Important interview question

1. Does Virtual Warehouse store data?

   ❌ No

2. Does Virtual Warehouse process data?

   ✅ Yes
