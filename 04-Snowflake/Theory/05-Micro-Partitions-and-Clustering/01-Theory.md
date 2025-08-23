# Overview

- [Overview](#overview)
- [Micro Partitions](#micro-partitions)
  - [Note](#note)

&nbsp;

&nbsp;

&nbsp;

# Micro Partitions

When we load or insert data into Snowflake,it automatically breaks data into small blocks of storage. These are called micro-partitions.

&nbsp;

Snowflake is columnar-based horizontally partitioned, means a row of data will be stored in the same micro-partition.

Each micro-partition:

- Is ~16 MB (compressed) in size (can vary up to ~500 MB uncompressed).
- Stores data in a columnar format.
- Covers a contiguous range of values for the table’s columns.
  &nbsp;

&nbsp;

## Note

Micro-partitioning is automatically performed on all snowflake tables.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
