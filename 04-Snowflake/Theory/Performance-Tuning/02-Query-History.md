# Content

- [Content](#content)
- [Query History](#query-history)
- [Metrics in query history](#metrics-in-query-history)
- [Why is Query History important](#why-is-query-history-important)
- [TOTAL_ELAPSED_TIME](#total_elapsed_time)
- [EXECUTION_TIME](#execution_time)
- [COMPILATION_TIME](#compilation_time)
- [Queued time](#queued-time)
- [BYTES_SCANNED](#bytes_scanned)
- [Query ID](#query-id)
- [Query History using SQL](#query-history-using-sql)
- [Important Queries](#important-queries)
  - [Find the slowest queries](#find-the-slowest-queries)
  - [Find queries scanning the most data](#find-queries-scanning-the-most-data)
  - [Find failed queries](#find-failed-queries)
- [Find queries from a particular warehouse](#find-queries-from-a-particular-warehouse)

&nbsp;

&nbsp;

&nbsp;

# Query History

Query History is one of the most important tools for Snowflake performance tuning and troubleshooting.

Snowflake Query History is a **record of SQL statements executed** in your Snowflake environment.

It allows you to inspect queries that have executed, understand how they performed, identify expensive or slow queries, and investigate failures.

Snowflake Query History helps you investigate executed queries and their performance characteristics.

&nbsp;

# Metrics in query history

For each query, you can investigate information such as:

- Query ID
  SQL text
  User
  Role
  Warehouse
  Start time
  End time
  Execution duration
  Compilation time
  Execution time
  Bytes scanned
  Rows produced
  Rows inserted/updated/deleted
  Query status
  Error information
  Warehouse load
  Query type
- Query tags

&nbsp;

| Column                     | Meaning                                      |
| -------------------------- | -------------------------------------------- |
| `QUERY_ID`                 | Unique ID of the query                       |
| `QUERY_TEXT`               | SQL statement executed                       |
| `USER_NAME`                | User who executed it                         |
| `ROLE_NAME`                | Role used                                    |
| `WAREHOUSE_NAME`           | Warehouse used                               |
| `DATABASE_NAME`            | Database used                                |
| `SCHEMA_NAME`              | Schema used                                  |
| `START_TIME`               | Query start time                             |
| `END_TIME`                 | Query completion time                        |
| `TOTAL_ELAPSED_TIME`       | Total execution duration                     |
| `EXECUTION_TIME`           | How long the query actually ran              |
| `COMPILATION_TIME`         | Time spent compiling/optimizing              |
| `QUEUED_PROVISIONING_TIME` | Time waiting for warehouse provisioning      |
| `QUEUED_REPAIR_TIME`       | Time waiting for warehouse repair            |
| `QUEUED_OVERLOAD_TIME`     | Time queued because warehouse was overloaded |
| `BYTES_SCANNED`            | Amount of data scanned                       |
| `ROWS_PRODUCED`            | Rows returned/generated                      |
| `ERROR_CODE`               | Error code if query failed                   |
| `ERROR_MESSAGE`            | Error details                                |
| `EXECUTION_STATUS`         | Query status                                 |
| `Partitions scanned`       | How much storage was scanned                 |
| `Partitions total`         | Total partitions available                   |

&nbsp;

&nbsp;

# Why is Query History important

The main purpose is performance analysis and troubleshooting.

Suppose someone tells you **"The employee report suddenly became very slow."**

Instead, you can use Query History to determine:

```
Was the query actually slow?
        ↓
Was compilation slow?
        ↓
Was execution slow?
        ↓
Did it scan too much data?
        ↓
Was the warehouse overloaded?
        ↓
Was the query queued?
        ↓
Did the query itself change?
        ↓
Was there a data-volume increase?
```

&nbsp;

&nbsp;

# TOTAL_ELAPSED_TIME

It represents the total time associated with the query execution.

For example:

```
TOTAL_ELAPSED_TIME = 30 seconds
```

But don't automatically conclude that the SQL itself required 30 seconds of execution.

The total can include different components.

&nbsp;

Conceptually:

```
Total elapsed time
       │
       ├── Compilation
       ├── Queueing
       └── Execution
```

&nbsp;

&nbsp;

# EXECUTION_TIME

`EXECUTION_TIME` tells you how much time was spent actually executing the query.

If execution time is high, investigate:

- Large scans
  Poor joins
  Expensive aggregations
  Large sorts
  Data explosion
  Insufficient pruning
  Warehouse sizing
- Query design

&nbsp;

&nbsp;

# COMPILATION_TIME

Compilation time is the time Snowflake spends compiling/optimizing the SQL before execution.

Potential causes of high compilation time can include:

- Very complex SQL
- Extremely large queries
- Large numbers of CTEs
  Complex joins
  Large query plans
- Metadata/object complexity

&nbsp;

&nbsp;

# Queued time

This is especially important for warehouse performance troubleshooting.

A query may spend time waiting before it can execute.

```
Query submitted
      ↓
Waiting for warehouse
      ↓
Warehouse available
      ↓
Query executes
```

Snowflake provides queue-related metrics such as:

```
QUEUED_PROVISIONING_TIME
QUEUED_REPAIR_TIME
QUEUED_OVERLOAD_TIME
```

&nbsp;

&nbsp;

# BYTES_SCANNED

This is one of the most useful metrics for performance tuning.

Suppose:

```sql
SELECT *
FROM SALES
WHERE CUSTOMER_ID = 100;
```

The query returns 10 rows, but scans 500 GB That's a potential performance issue.

This leads directly to concepts such as:

- Micro-partition pruning
- Search optimization
  Clustering
  Predicate pushdown
  Query optimization
  Selecting only required columns

&nbsp;

&nbsp;

# Query ID

Every query has a unique `QUERY_ID`.

The Query ID is extremely useful when debugging.

For example:

```
User reports failure
       ↓
Get Query ID
       ↓
Open Query History
       ↓
Inspect SQL
       ↓
Inspect error
       ↓
Inspect execution details
       ↓
Identify root cause
```

You can also use the Query ID to retrieve information programmatically.

&nbsp;

&nbsp;

# Query History using SQL

For serious monitoring, don't rely only on Snowsight.

You can query Snowflake metadata.

One important source is:

```sql
SNOWFLAKE.ACCOUNT_USAGE.QUERY_HISTORY
```

&nbsp;

&nbsp;

# Important Queries

## Find the slowest queries

```sql
SELECT
    QUERY_ID,
    QUERY_TEXT,
    USER_NAME,
    WAREHOUSE_NAME,
    TOTAL_ELAPSED_TIME / 1000 AS ELAPSED_SECONDS,
    BYTES_SCANNED,
    ROWS_PRODUCED
FROM SNOWFLAKE.ACCOUNT_USAGE.QUERY_HISTORY
WHERE START_TIME >= DATEADD('day', -7, CURRENT_TIMESTAMP())
ORDER BY TOTAL_ELAPSED_TIME DESC
LIMIT 20;
```

This gives you the top 20 queries by elapsed time over the last 7 days.

&nbsp;

&nbsp;

## Find queries scanning the most data

```sql
SELECT
    QUERY_ID,
    QUERY_TEXT,
    USER_NAME,
    WAREHOUSE_NAME,
    BYTES_SCANNED,
    TOTAL_ELAPSED_TIME / 1000 AS ELAPSED_SECONDS
FROM SNOWFLAKE.ACCOUNT_USAGE.QUERY_HISTORY
WHERE START_TIME >= DATEADD('day', -7, CURRENT_TIMESTAMP())
ORDER BY BYTES_SCANNED DESC
LIMIT 20;
```

This can help identify queries causing large scan workloads.

&nbsp;

&nbsp;

## Find failed queries

```sql
SELECT
    QUERY_ID,
    QUERY_TEXT,
    USER_NAME,
    ERROR_CODE,
    ERROR_MESSAGE,
    START_TIME
FROM SNOWFLAKE.ACCOUNT_USAGE.QUERY_HISTORY
WHERE EXECUTION_STATUS = 'FAIL'
ORDER BY START_TIME DESC;
```

This is useful for operational monitoring.

```
Failed Query
     ↓
Query History
     ↓
Error Code
     ↓
Error Message
     ↓
Root Cause
```

&nbsp;

&nbsp;

# Find queries from a particular warehouse

```sql
SELECT
    QUERY_ID,
    QUERY_TEXT,
    USER_NAME,
    START_TIME,
    TOTAL_ELAPSED_TIME,
    EXECUTION_TIME,
    BYTES_SCANNED
FROM SNOWFLAKE.ACCOUNT_USAGE.QUERY_HISTORY
WHERE WAREHOUSE_NAME = 'ANALYTICS_WH'
ORDER BY START_TIME DESC;
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;
