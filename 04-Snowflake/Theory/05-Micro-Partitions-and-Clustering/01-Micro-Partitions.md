# Content

- [Content](#content)
- [Why Snowflake Introduced Micro-Partitions](#why-snowflake-introduced-micro-partitions)
  - [Problem](#problem)
  - [Snowflake solution](#snowflake-solution)
- [Micro Partitions](#micro-partitions)
  - [Note](#note)
- [How Micro-Partitioning Works](#how-micro-partitioning-works)
  - [Insert](#insert)
  - [Snowflake](#snowflake)
  - [Example](#example)
    - [Example](#example-1)
- [Key Properties](#key-properties)
- [Micro-Partition Size](#micro-partition-size)
- [Benefits](#benefits)
- [Metadata Stored for Each Micro-Partition](#metadata-stored-for-each-micro-partition)
- [Partition Pruning](#partition-pruning)
- [How to Check Partitions](#how-to-check-partitions)
  - [Output:](#output)

&nbsp;

&nbsp;

&nbsp;

# Why Snowflake Introduced Micro-Partitions

Traditional databases use:

- Tables
- Indexes
- Manual partitioning

&nbsp;

## Problem

- Large scans
- High maintenance
- Expensive indexing

&nbsp;

## Snowflake solution

→ Automatically split table data into Micro-Partitions

&nbsp;

&nbsp;

# Micro Partitions

When we load or insert data into Snowflake, it automatically breaks data into small blocks of storage. These are called **micro-partitions**.

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

Each micro-partition:

- can hold ~16 MB of compressed data and 50 MB – 500 MB of uncompressed data.
- Stores data in a columnar format.
- Covers a contiguous range of values for the table’s columns.

&nbsp;

&nbsp;

## Note

Micro-partitioning is automatically performed on all snowflake tables.

&nbsp;

&nbsp;

# How Micro-Partitioning Works

## Insert

```sql
INSERT INTO SALES VALUES (...);
```

&nbsp;

## Snowflake

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

&nbsp;

## Example

MP1:

```
Order_id:
MIN=1
MAX=1000
```

MP2:

```
Order_id:
MIN=1001
MAX=2000
```

&nbsp;

### Example

| ID  | NAME | CITY    |
| --- | ---- | ------- |
| 1   | A    | Delhi   |
| 2   | B    | Mumbai  |
| 3   | C    | Kolkata |

&nbsp;

Snowflake stores:

- MP1 → Rows 1–50000
- MP2 → Rows 50001–100000
- MP3 → Rows 100001–150000

Not row-based.

&nbsp;

&nbsp;

# Key Properties

1. **Immutable** → Once created, a micro-partition can’t be changed. Updates/deletes create new micro-partitions and mark old ones as invalid.

2. **Automatic** → Users don’t create or manage them directly; Snowflake handles it behind the scenes.

3. **Metadata Stored Separately** → For each micro-partition, Snowflake stores:
   - Column min/max values
   - Number of distinct values
   - Null count
   - Bloom filters

This metadata allows pruning:
👉 Instead of scanning entire tables, Snowflake checks which micro-partitions contain relevant values.

&nbsp;

&nbsp;

# Micro-Partition Size

Typical:

- 50 MB–500 MB uncompressed data
- ~16 MB of compressed data

&nbsp;

&nbsp;

# Benefits

- **Faster Queries** → Only scan relevant partitions.
- **Reduced Cost** → Less data scanned = fewer credits used.
- **Columnar Storage** → Better compression & vectorized execution.

&nbsp;

&nbsp;

# Metadata Stored for Each Micro-Partition

Along with the actual columnar data, Snowflake also stores metadata for every micro-partition. This metadata is key to query optimization and performance improvements.

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

# Partition Pruning

Partition Pruning means Scanning only relevant partitions using metadata.

This is the core optimization.

```sql
SELECT *
FROM SALES
WHERE DATE='2026-06-01';
```

&nbsp;

Snowflake checks metadata:

- MP1 → Jan–Mar ❌
- MP2 → Apr–Jun ✅
- MP3 → Jul–Sep ❌

Only MP2 scanned.

This is called Partition Pruning

Result:

- Less scan
- Faster query
- Lower credits

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

## Output:

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

&nbsp;

&nbsp;

&nbsp;

&nbsp;
