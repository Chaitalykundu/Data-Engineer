# Snowflake Micro-partitions & Clustering

## 1. What exactly is stored inside a Snowflake micro-partition?

A micro-partition contains:

- A group of table rows stored in columnar format
- ~16 MB of compressed data and 50 MB–500 MB uncompressed data
- Metadata for each column, including:
  - Min / max value
  - No of distinct values
  - NULL count
  -

&nbsp;

&nbsp;

## 2. When should you enable Automatic Clustering?

&nbsp;

&nbsp;

## 3. Explain what happens when this query runs

```sql
SELECT *
FROM SALES
WHERE ORDER_DATE='2026-07-01';
```

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

&nbsp;
