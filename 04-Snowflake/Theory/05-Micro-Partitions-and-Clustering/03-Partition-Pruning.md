# Content

- [Content](#content)
- [Partition Pruning](#partition-pruning)
- [Example](#example)
- [How it works](#how-it-works)
- [Why pruning is important](#why-pruning-is-important)
- [Important distinction](#important-distinction)
- [Poor pruning](#poor-pruning)
- [How to see pruning in Snowflake](#how-to-see-pruning-in-snowflake)
  - [Example:](#example-1)

&nbsp;

&nbsp;

&nbsp;

# Partition Pruning

Partition pruning is the process of skipping micro-partitions that cannot contain data required by a query.

&nbsp;

Instead of scanning the entire table, Snowflake uses micro-partition metadata to identify which partitions need to be scanned.

This is the core optimization.

# Example

Suppose the `sales` table has:

| Micro-partition | `order_date` range    |
| --------------- | --------------------- |
| MP1             | January–March 2026    |
| MP2             | April–June 2026       |
| MP3             | July–September 2026   |
| MP4             | October–December 2026 |

```sql
SELECT *
FROM SALES
WHERE DATE='2026-06-01';
```

&nbsp;

Snowflake checks the `order_date` values stored in the metadata:

| Micro-partition | Action            |
| --------------- | ----------------- |
| MP1             | Pruned/skipped❌  |
| MP2             | Scanned ✅        |
| MP3             | Pruned/skipped❌  |
| MP4             | Pruned/skipped ❌ |

Only MP2 scanned.

This is called Partition Pruning

Result:

- Less scan
- Faster query
- Lower credits

&nbsp;

&nbsp;

# How it works

- Snowflake reads the query’s filter condition.
- It checks micro-partition metadata.
- It eliminates partitions that cannot contain matching values.
- It scans the remaining partitions.
- It applies the exact row-level filter and returns the results.

&nbsp;

&nbsp;

# Why pruning is important

- Reduces the amount of data scanned
- Improves query performance
- Reduces warehouse processing time
- Can reduce compute-credit consumption
- Avoids traditional indexes

&nbsp;

&nbsp;

# Important distinction

Pruning selects which micro-partitions to scan; it does not directly select the final rows.

For example, if a partition contains January–March data but the query asks for March only:

- The entire relevant micro-partition may need to be scanned.
- January and February rows are then filtered out.
- Only March rows are returned.

&nbsp;

&nbsp;

# Poor pruning

If the same date range is scattered across many micro-partitions, Snowflake may need to scan many partitions. Appropriate clustering can improve data organization and pruning for large tables.

For example, if data is loaded in random order:

| Micro-partition | Date range   |
| --------------- | ------------ |
| MP1             | Jan–June     |
| MP2             | Feb–August   |
| MP3             | Mar–December |

A query for May may need to scan all three partitions. This is poor pruning.

&nbsp;

&nbsp;

# How to see pruning in Snowflake

After running a query in Snowsight, open Query Profile and look for:

```
Partitions total
Partitions scanned
Partitions pruned
```

&nbsp;

## Example

```
Partitions total:   500
Partitions scanned: 20
Partitions pruned:  480
```

This indicates good pruning.

&nbsp;

To assess organization for a date column:

```sql
SELECT SYSTEM$CLUSTERING_INFORMATION(
  'SALES',
  '(ORDER_DATE)'
);
```
