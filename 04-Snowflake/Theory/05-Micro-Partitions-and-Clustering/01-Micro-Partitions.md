# Content

- [Content](#content)
- [Why Snowflake Introduced Micro-Partitions](#why-snowflake-introduced-micro-partitions)
  - [Problem](#problem)
  - [Snowflake solution](#snowflake-solution)
- [Micro Partitions](#micro-partitions)
- [Key characteristics](#key-characteristics)
- [How Micro-Partitioning Works](#how-micro-partitioning-works)
  - [1. Data is loaded or inserted](#1-data-is-loaded-or-inserted)
  - [2. Data is automatically divided](#2-data-is-automatically-divided)
  - [3. Data is stored in columnar format](#3-data-is-stored-in-columnar-format)
    - [Example](#example)
  - [4. Metadata is generated](#4-metadata-is-generated)
  - [5. Query filtering is checked against metadata](#5-query-filtering-is-checked-against-metadata)
  - [6. Required columns are scanned](#6-required-columns-are-scanned)
  - [7. Changes create new micro-partitions](#7-changes-create-new-micro-partitions)
  - [Complete flow](#complete-flow)
- [Micro-Partition Size](#micro-partition-size)
- [Benefits](#benefits)
- [Metadata Stored for Each Micro-Partition](#metadata-stored-for-each-micro-partition)
- [Impact of Micro-Partitions in Snowflake](#impact-of-micro-partitions-in-snowflake)
- [How to Check Partitions](#how-to-check-partitions)
  - [Output](#output)
- [Interview Questions](#interview-questions)
- [Answers](#answers)
    - [5. Suppose we have the table. Now we need to filter the data BETWEEN '2026-03-01' AND '2026-06-30'. Then what will happen? Can we partition this more](#5-suppose-we-have-the-table-now-we-need-to-filter-the-data-between-2026-03-01-and-2026-06-30-then-what-will-happen-can-we-partition-this-more)

&nbsp;

&nbsp;

&nbsp;

# Why Snowflake Introduced Micro-Partitions

Traditional databases use:

- **Tables** to store data
- **Indexes** to improve query performance
- **Manual partitioning** to divide large tables

&nbsp;

## Problem

Problems with the traditional approach:

- Large queries may scan huge amounts of data
- Indexes and partitions require regular maintenance
- Creating and maintaining indexes increases storage and processing costs
- Choosing an incorrect partition key can reduce performance

&nbsp;

## Snowflake solution

→ Automatically split table data into Micro-Partitions

&nbsp;

&nbsp;

# Micro Partitions

When we load or insert data into Snowflake, it automatically breaks data into small blocks of storage. These are called **micro-partitions**.

Snowflake introduced micro-partitions to store and query very large datasets efficiently without requiring users to manage traditional partitions manually.

&nbsp;

Micro-partitions are the fundamental unit of **data storage** in Snowflake.

Snowflake is columnar-based horizontally partitioned, means a row of data will be stored in the same micro-partition.

&nbsp;

Think:

```
TABLE
 ↓
Many Micro-Partitions
 ↓
Compressed Columnar Data
```

&nbsp;

&nbsp;

# Key characteristics

1. **Immutable** → Once created, a micro-partition can’t be changed. Updates/deletes create new micro-partitions and mark old ones as invalid.

2. **Automatic** → Snowflake automatically divides table data into micro-partitions during data loading. No manual partition definition is required. Users don’t create or manage them directly

3. **Small storage units** → Each micro-partition can hold **~16 MB of compressed data** and **50 MB – 500 MB of uncompressed data**.

4. **Columnar storage** → Data is stored column by column, allowing Snowflake to scan only the columns required by a query.

5. **Compressed storage** → Snowflake automatically compresses the data and chooses suitable compression techniques.

6. **Metadata Stored Separately** → For each micro-partition, Snowflake stores:
   - Column min/max values
   - Number of distinct values
   - Null count
   - Bloom filters

7. **Supports partition pruning** → Snowflake uses metadata to
   skip micro-partitions that cannot contain matching rows.

8. **Overlapping value ranges are possible** → The same value
   or date range can appear in multiple micro-partitions,
   especially when data is loaded out of order.

9. **Transparent to users** → Users cannot directly create,
   resize or manage individual micro-partitions.

10. **Supports efficient data management features** →
    Immutability helps Snowflake provide:
    - Time Travel
    - Fail-safe
    - Zero-copy cloning
11. **Can be reorganized through clustering** → Users cannot control partition boundaries, but clustering keys can improve how related values are grouped across micro-partitions.

&nbsp;

&nbsp;

&nbsp;

# How Micro-Partitioning Works

When data is loaded into a Snowflake table, Snowflake automatically performs the following steps:

## 1. Data is loaded or inserted

```sql
COPY INTO sales
FROM @sales_stage;
```

```sql
INSERT INTO SALES VALUES (...);
```

Snowflake receives the table data from files, applications or other sources or by inserting fresh data

&nbsp;

## 2. Data is automatically divided

```
TABLE
↓
Split Data
↓
Create MP1
Create MP2
Create MP3
```

Each partition stores metadata.

Users do not need to create or manage these partitions.

&nbsp;

## 3. Data is stored in columnar format

Inside each micro-partition, data is stored column by column instead of row by row.

&nbsp;

### Example

| Micro-partition | Order ID    | Order date | Region    |
| --------------- | ----------- | ---------- | --------- |
| MP1             | 1–1,000     | Jan–Mar    | India, US |
| MP2             | 1,001–2,000 | Apr–Jun    | India, UK |
| MP3             | 2,001–3,000 | Jul–Sep    | US, UK    |

This allows Snowflake to read only the columns required by a query.

&nbsp;

## 4. Metadata is generated

Snowflake stores metadata for each micro-partition, including:

- Minimum and maximum column values
- Number of distinct values
- Number of NULL values
- Other statistics used for query optimization

The metadata is stored separately, so Snowflake can inspect it without scanning the actual table data.

&nbsp;

## 5. Query filtering is checked against metadata

Consider this query:

```sql
SELECT order_id, region
FROM sales
WHERE order_date BETWEEN '2026-04-01' AND '2026-06-30';
```

Snowflake checks the date ranges stored in the metadata:

| Micro-partition | Date range | Action |
| --------------- | ---------- | ------ |
| MP1             | Jan–Mar    | Skip   |
| MP2             | Apr–Jun    | Scan   |
| MP3             | Jul–Sep    | Skip   |

Only MP2 is scanned.

This process is called micro-partition pruning.

&nbsp;

## 6. Required columns are scanned

Within MP2, Snowflake reads only:

- order_id
- region
- order_date, which is needed for filtering

Other columns such as `customer_name` or `payment_method` do not need to be read.

&nbsp;

## 7. Changes create new micro-partitions

Micro-partitions are immutable, meaning they cannot be modified in place.

When rows are updated or deleted:

- Snowflake creates new micro-partitions containing the changed data.
- The old micro-partitions are retained temporarily for Time Travel.
- Query metadata is updated automatically.

&nbsp;

## Complete flow

```
Load data → Create micro-partitions → Store columnar data → Generate metadata → Evaluate query filter → Prune irrelevant partitions → Scan required partitions and columns → Return results
```

&nbsp;

&nbsp;

&nbsp;

# Micro-Partition Size

Typical:

- ~16 MB of compressed data
- 50 MB–500 MB uncompressed data

&nbsp;

&nbsp;

# Benefits

- **Faster Queries** → Snowflake uses metadata to skip irrelevant micro-partitions, so it reads less data.
- **Columnar Storage** → Snowflake reads only the required columns, which improves performance for wide tables.
- **Partition pruning** -> If a query filters by order_date, Snowflake scans only partitions that may contain the requested date.
- **Lower compute cost** - Less data scanned usually means less warehouse processing time and fewer credits used.
- **No manual partitioning** -> You do not need to define partition keys, create partitions, or maintain them.
- **No traditional indexes required** -> Snowflake uses micro-partition metadata instead of user-managed indexes for most analytical queries.
- **Automatic compression** -> Data is compressed automatically, reducing physical storage usage.
- **Supports large-scale analytics** -> Micro-partitions allow Snowflake to process very large tables efficiently and in parallel.
- **Supports Time Travel and Zero-Copy Cloning** -> Because micro-partitions are immutable, Snowflake can retain older versions and share existing storage references efficiently.
- **Works automatically** -> Every standard Snowflake table uses micro-partitions by default—no setup is needed.

&nbsp;

&nbsp;

# Metadata Stored for Each Micro-Partition

Along with the actual columnar data, Snowflake also stores metadata for every micro-partition. Metadata also maintained by the snowflake.

This metadata is key to query optimization and performance improvements.

&nbsp;

Metadata stored in micro-partitions includes:

1. Column-Level Min/Max Values
2. Number of Distinct Values (NDV)
3. Number of rows
4. Null Value Count
5. Bloom Filters (probabilistic indexes)
6. Other Partition Metadata
   - Partition creation time
   - Row count per partition
   - Table and column references
   - Clustering information (if clustering keys are defined)

&nbsp;

&nbsp;

# Impact of Micro-Partitions in Snowflake

Micro-partitions directly affect query performance, cost, storage, and maintenance.

&nbsp;

| Area                | Impact                                                                                                                            |
| ------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| Query performance   | Snowflake scans only relevant micro-partitions using pruning, so queries can run faster.                                          |
| Compute cost        | Less data scanned means the warehouse does less work, which can reduce credit usage.                                              |
| Storage efficiency  | Columnar storage and automatic compression reduce physical storage usage.                                                         |
| Maintenance         | No manual partitions or traditional indexes need to be created and maintained.                                                    |
| Data loading        | Data is automatically organized into micro-partitions during load.                                                                |
| Updates and deletes | Changes create new micro-partitions rather than modifying old ones in place.                                                      |
| Time Travel         | Older micro-partition versions can be retained, allowing recovery of previous data.                                               |
| Zero-copy cloning   | Clones can initially reference the same underlying micro-partitions, so cloning is fast and storage-efficient.                    |
| Query optimization  | Metadata such as minimum and maximum values helps the optimizer decide what data to scan.                                         |
| Clustering          | If values are scattered across many micro-partitions, pruning becomes weak; clustering can improve organization for large tables. |

&nbsp;

&nbsp;

&nbsp;

# How to Check Partitions

View clustering information:

```
SELECT SYSTEM$CLUSTERING_INFORMATION(
'SALES'
);
```

&nbsp;

## Output

```
{
 "average_depth":3.1
}
```

Lower depth → Better.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview Questions

1. Why Did Snowflake Introduce Micro-Partitions
2. What is Micro-Partitions
3. What are the Key Properties of micro partition
4. How does Micro-Partitioning Work
5. Suppose we have the table

   | Micro-partition | Order ID    | Order date | Region    |
   | --------------- | ----------- | ---------- | --------- |
   | MP1             | 1–1,000     | Jan–Mar    | India, US |
   | MP2             | 1,001–2,000 | Apr–Jun    | India, UK |
   | MP3             | 2,001–3,000 | Jul–Sep    | US, UK    |

   Now we need to filter the data BETWEEN '2026-03-01' AND '2026-06-30'. Then what will happen? Can we partition this more

6. What are the Metadata Stored for Each Micro-Partition
7. What is Partition Pruning

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Answers

### 5. Suppose we have the table. Now we need to filter the data BETWEEN '2026-03-01' AND '2026-06-30'. Then what will happen? Can we partition this more

| Micro-partition | Order ID    | Order date | Region    |
| --------------- | ----------- | ---------- | --------- |
| MP1             | 1–1,000     | Jan–Mar    | India, US |
| MP2             | 1,001–2,000 | Apr–Jun    | India, UK |
| MP3             | 2,001–3,000 | Jul–Sep    | US, UK    |

Snowflake will scan both MP1 and MP2 because the requested date range overlaps both micro-partitions.

```sql
SELECT order_id, region
FROM sales
WHERE order_date BETWEEN '2026-03-01' AND '2026-06-30';
```

Snowflake first uses metadata to prune MP3. It then scans MP1 and MP2 and applies the exact date filter:

- From MP1, only rows dated March 1–31 are returned.
- From MP2, rows dated April 1–June 30 are returned.
- January and February rows in MP1 are scanned but filtered out.

This illustrates an important point: partition pruning determines which micro-partitions must be scanned; the WHERE condition then determines which rows are returned.

&nbsp;
