# Content

- [Content](#content)
- [11-07-0=2026](#11-07-02026)
- [Interview Challenge](#interview-challenge)
  - [Challenge 1](#challenge-1)
- [Common Interview Mistakes](#common-interview-mistakes)
    - [Mistake 1](#mistake-1)
    - [Mistake 2](#mistake-2)
    - [Mistake 3](#mistake-3)

&nbsp;

&nbsp;

&nbsp;

# 11-07-0=2026

1. What exactly is stored inside a Snowflake micro-partition?
2. When should you enable Automatic Clustering?
3. Explain what happens when this query runs.
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

# Interview Challenge

## Challenge 1

You're given a 3 TB SALES table queried primarily by:

```
WHERE order_date
AND region
```

The table receives hourly incremental loads, and query performance has degraded over time.

Explain:

1. Whether you would enable Automatic Clustering.
2. Which clustering key(s) you would choose and why.
3. How you would verify that clustering improved performance.
4. Which Snowflake system views or query profile metrics you would use to measure partition pruning and compute efficiency.

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

&nbsp;

# Common Interview Mistakes

### Mistake 1

"Snowflake partitions data based on primary keys."

Correct

Snowflake creates micro-partitions automatically based on insertion order. Primary keys are informational and do not control storage.

&nbsp;

&nbsp;

### Mistake 2

"Clustering creates indexes."

Correct

Clustering reorganizes micro-partitions to improve pruning. It does not create indexes.

&nbsp;

&nbsp;

### Mistake 3

"Automatic clustering is free."

Correct

Automatic clustering consumes Snowflake compute credits and should be enabled only when the performance gains justify the cost.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
