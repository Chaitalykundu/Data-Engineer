# Overview

- [Overview](#overview)
- [Micro Partitions](#micro-partitions)
  - [Note](#note)
- [Key Properties](#key-properties)
- [Benefits](#benefits)
- [Metadata in Micro-Partitions](#metadata-in-micro-partitions)

&nbsp;

&nbsp;

&nbsp;

# Micro Partitions

When we load or insert data into Snowflake, it automatically breaks data into small blocks of storage. These are called **micro-partitions**.

&nbsp;

Micro-partitions are the fundamental unit of **data storage** in Snowflake.

Snowflake is columnar-based horizontally partitioned, means a row of data will be stored in the same micro-partition.

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

# Benefits

- **Faster Queries** → Only scan relevant partitions.
- **Reduced Cost** → Less data scanned = fewer credits used.
- **Columnar Storage** → Better compression & vectorized execution.

&nbsp;

&nbsp;

# Metadata in Micro-Partitions

Along with the actual columnar data, Snowflake also stores metadata for every micro-partition. This metadata is key to query optimization and performance improvements.

&nbsp;

Metadata stored in micro-partitions includes:

1. Column-Level Min/Max Values
2. Number of Distinct Values (NDV)
3. Null Value Count
4. Bloom Filters (probabilistic indexes)
5. Other Partition Metadata
   - Partition creation time
   - Row count per partition
   - Table and column references
   - Clustering information (if clustering keys are defined)

&nbsp;

&nbsp;
