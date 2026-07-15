# Content

- [Content](#content)
- [11-07-2026](#11-07-2026)
- [12-07-2026](#12-07-2026)
  - [Snowflake RBAC \& Administration](#snowflake-rbac--administration)
- [13-07-2026](#13-07-2026)
  - [Snowflake Warehouse](#snowflake-warehouse)
- [14-07-2026](#14-07-2026)
  - [Snowflake Streams \& Tasks](#snowflake-streams--tasks)
- [15-07-2026](#15-07-2026)
  - [Snowflake Security \& Administration](#snowflake-security--administration)
- [Interview Challenge](#interview-challenge)
  - [Challenge 1](#challenge-1)
- [Common Interview Mistakes](#common-interview-mistakes)
    - [Mistake 1](#mistake-1)
    - [Mistake 2](#mistake-2)
    - [Mistake 3](#mistake-3)
    - [Mistake 4](#mistake-4)
    - [Mistake 5](#mistake-5)
    - [Mistake 6](#mistake-6)
    - [Mistake 7](#mistake-7)
    - [Mistake 8](#mistake-8)
    - [Mistake 9](#mistake-9)
    - [Mistake 10](#mistake-10)
    - [Mistake 11](#mistake-11)
  - [Mistake 12](#mistake-12)

&nbsp;

&nbsp;

&nbsp;

# 11-07-2026

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

# 12-07-2026

## Snowflake RBAC & Administration

1. Explain Snowflake's RBAC hierarchy. How do account roles, database roles, and privileges work together?
2. Difference between `OWNERSHIP` and `USAGE`
3. A user has `SELECT` on a table but still gets "Insufficient privileges." Why?

&nbsp;

&nbsp;

# 13-07-2026

## Snowflake Warehouse

1. Your warehouse queue time is increasing. How would you troubleshoot it?
2. When should you scale up vs. scale out a Snowflake warehouse?

&nbsp;

# 14-07-2026

## Snowflake Streams & Tasks

1. Explain the difference between a Stream and a Task.
2. What happens if a Stream is not consumed for a long time?
3. How would you build a near real-time ingestion pipeline using Streams and Tasks?

&nbsp;

&nbsp;

# 15-07-2026

## Snowflake Security & Administration

1. What is a Network Policy, and when would you use it?
2. Explain the difference between authentication and authorization in Snowflake.
3. Your organization wants to eliminate long-lived passwords for applications running in cloud infrastructure. What approach would you recommend?

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview Challenge

## Challenge 1

You're given a 3 TB SALES table queried primarily by:

```sql
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

### Mistake 4

Granting privileges directly to users.

Correct

Grant privileges to roles, then assign roles to users.

&nbsp;

&nbsp;

### Mistake 5

Assuming OWNERSHIP can be shared.

Correct

Only one role can own an object at any given time.

&nbsp;

&nbsp;

### Mistake 6

Forgetting `USAGE` on the database and schema.

Correct

Access to objects requires the full privilege chain: database → schema → object.

&nbsp;

&nbsp;

### Mistake 7

"Scaling up and scaling out solve the same problem."

Correction

- Scale up improves performance for individual queries.
- Scale out improves concurrency and reduces queueing.

&nbsp;

&nbsp;

### Mistake 8

"Increasing warehouse size is the first solution for slow queries."

Correction

Investigate query plans, pruning, joins, filters, and warehouse utilization before increasing compute resources.

&nbsp;

&nbsp;

### Mistake 9

"Streams store changed data permanently."

Correction

Streams store offsets that reference table changes. They depend on the underlying table's change tracking and retention period.

&nbsp;

&nbsp;

### Mistake 10

"Tasks automatically detect table changes."

Correction

Tasks execute on a schedule or dependency chain. They do not monitor table changes by themselves; pairing them with streams is a common pattern for incremental processing.

&nbsp;

&nbsp;

### Mistake 11


"Network policies control object permissions."

Correction

Network policies restrict where users can connect from. Access to databases, schemas, and tables is controlled through RBAC.

&nbsp;

&nbsp;

## Mistake 12

"Authentication and authorization are the same."

Correction

Authentication verifies identity; authorization determines permitted actions after identity is established.

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

&nbsp;

&nbsp;
