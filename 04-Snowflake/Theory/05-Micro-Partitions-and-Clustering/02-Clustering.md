# Content

- [Content](#content)
- [Clustering](#clustering)
- [Why clustering is needed](#why-clustering-is-needed)
- [Natural clustering vs explicit clustering](#natural-clustering-vs-explicit-clustering)
  - [Example of a natural pattern](#example-of-a-natural-pattern)
- [What is a clustering key?](#what-is-a-clustering-key)
  - [Create a table with a clustering key](#create-a-table-with-a-clustering-key)
  - [Alter table Example with cluster key](#alter-table-example-with-cluster-key)
    - [Single column](#single-column)
    - [Multiple columns](#multiple-columns)
    - [Expression](#expression)
- [How Snowflake maintains clustering](#how-snowflake-maintains-clustering)
- [How to choose a clustering key](#how-to-choose-a-clustering-key)
  - [Good examples](#good-examples)
- [When clustering is useful](#when-clustering-is-useful)
    - [Example](#example)
- [When not to use clustering](#when-not-to-use-clustering)
- [How to measure clustering](#how-to-measure-clustering)
- [Manage a clustering key](#manage-a-clustering-key)
  - [Set a key:](#set-a-key)
  - [View the clustering key:](#view-the-clustering-key)
  - [Remove it:](#remove-it)
  - [Suspend or resume automatic clustering:](#suspend-or-resume-automatic-clustering)
- [Important distinction](#important-distinction)

&nbsp;

&nbsp;

&nbsp;

# Clustering

Clustering means arranging similar values together across micro-partitions so Snowflake can skip / prune more irrelevant partitions during a query.

&nbsp;

It is most useful for very large tables where queries repeatedly filter or join on the same columns.

Snowflake uses micro-partitions automatically. A clustering key tells Snowflake which column values should be kept better organized over time.

&nbsp;

&nbsp;

# Why clustering is needed

Suppose `SALES` data is loaded randomly:

| Micro-partition | `ORDER_DATE` range |
| --------------- | ------------------ |
| MP1             | Jan–Dec            |
| MP2             | Feb–Nov            |
| MP3             | Jan–Oct            |

&nbsp;

Query:

```sql
SELECT *
FROM sales
WHERE order_date BETWEEN '2026-04-01' AND '2026-04-30';
```

April can be present in all three partitions, so Snowflake may scan all three. This is **poor partition pruning**.

&nbsp;

After clustering by `ORDER_DATE`:

```sql
ALTER TABLE sales
CLUSTER BY (order_date);
```

Conceptually, data becomes organized like this:

| Micro-partition | `ORDER_DATE` range |
| --------------- | ------------------ |
| MP1             | Jan–Mar            |
| MP2             | Apr–Jun            |
| MP3             | Jul–Sep            |
| MP4             | Oct–Dec            |

Now the April query mainly scans MP2 and prunes the others.

&nbsp;

&nbsp;

&nbsp;

# Natural clustering vs explicit clustering

| Type                | Meaning                                                                                                                              |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| Natural clustering  | Data is naturally organized based on its load order. For example, daily files loaded in date order may already cluster well by date. |
| Explicit clustering | You specify a clustering key; Snowflake maintains the organization using Automatic Clustering.                                       |

&nbsp;

## Example of a natural pattern

```
Load 1: January data
Load 2: February data
Load 3: March data
```

This may produce good date pruning even without a clustering key.

&nbsp;

&nbsp;

# What is a clustering key?

A clustering key is one or more expressions that Snowflake uses to organize rows across micro-partitions.

&nbsp;

&nbsp;

## Create a table with a clustering key

```sql
CREATE TABLE sales (
    order_id NUMBER,
    order_date DATE,
    customer_id NUMBER,
    region VARCHAR,
    sales_amount NUMBER(12,2)
)
CLUSTER BY (order_date);
```

&nbsp;

## Alter table Example with cluster key

### Single column

```sql
ALTER TABLE sales
CLUSTER BY (order_date);
```

&nbsp;

### Multiple columns

```sql
ALTER TABLE sales
CLUSTER BY (order_date, customer_id);
```

&nbsp;

### Expression

A clustering key can also use an expression:

```sql
ALTER TABLE events
CLUSTER BY (TO_DATE(event_timestamp));
```

This is useful when queries filter by date but the stored column is a timestamp.

&nbsp;

&nbsp;

&nbsp;

# How Snowflake maintains clustering

When new data is inserted, Snowflake creates new micro-partitions. Over time, new values may overlap existing micro-partitions.

If the table has a clustering key, Snowflake’s Automatic Clustering service can reorganize the affected data in the background.

```
New data load
     ↓
New micro-partitions created
     ↓
Value ranges begin to overlap
     ↓
Automatic Clustering detects need
     ↓
Data is reorganized into better-clustered micro-partitions
```

&nbsp;

This is not an index rebuild. Snowflake rewrites data into new micro-partitions and handles old ones according to its retention rules.

Automatic clustering uses serverless compute, so it has a cost.

&nbsp;

&nbsp;

# How to choose a clustering key

Choose columns that are:

- Used repeatedly in selective `WHERE` filters
- Used in common join conditions on very large fact tables
- Used in range filters, especially dates/timestamps
- High or moderately high cardinality
- Causing poor partition pruning according to Query Profile

&nbsp;

## Good examples

```sql
CLUSTER BY (order_date)
CLUSTER BY (tenant_id, event_date)
CLUSTER BY (customer_id, order_date)
```

Avoid more than a few columns. Each extra column can reduce the usefulness of the key and increase maintenance cost.

&nbsp;

&nbsp;

# When clustering is useful

Use a clustering key when:

| Condition                        | Why it matters                                 |
| -------------------------------- | ---------------------------------------------- |
| Table is very large              | Scanning too many partitions becomes expensive |
| The same filters run repeatedly  | The benefit is reused across many queries      |
| Query Profile shows weak pruning | Evidence that organization is a real issue     |
| Data arrives unordered           | New loads create overlapping ranges            |
| Queries use selective ranges     | Pruning can skip substantial data              |

&nbsp;

### Example

A multi-terabyte clickstream table repeatedly queried by event_date and tenant_id.

&nbsp;

&nbsp;

# When not to use clustering

Do not use it just because a table has a date column.

Avoid it when:

- The table is small or query performance is already acceptable.
- Most queries intentionally scan the full table.
- The filter columns change frequently across workloads.
- The column has very few values, such as status with ACTIVE / INACTIVE.
- The maintenance cost is greater than query savings.

For point lookups such as:

```sql
WHERE customer_id = 100001
```

on large, poorly clustered data, consider the Search Optimization Service rather than assuming clustering is the best solution.

&nbsp;

&nbsp;

# How to measure clustering

Check a table’s natural clustering:

```sql
SELECT SYSTEM$CLUSTERING_INFORMATION('SALES');
```

&nbsp;

Check clustering for a proposed key:

```sql
SELECT SYSTEM$CLUSTERING_INFORMATION(
    'SALES',
    '(ORDER_DATE)'
);
```

&nbsp;

The function returns JSON. Important fields:

| Field                            | Meaning                                                     | Desired trend              |
| -------------------------------- | ----------------------------------------------------------- | -------------------------- |
| `total_partition_count`          | Total micro-partitions in the table                         | Context only               |
| `total_constant_partition_count` | Partitions that do not overlap for the key                  | Higher is generally better |
| `average_overlaps`               | Number of overlapping partitions                            | Lower is better            |
| `average_depth`                  | Average number of partitions Snowflake may need to consider | Lower is better            |

&nbsp;

Also check Query Profile after representative queries:

```
Partitions scanned
Partitions pruned
Bytes scanned
Execution time
```

Do not choose a key only from the clustering-information output. Confirm that real production queries improve.

&nbsp;

&nbsp;

# Manage a clustering key

## Set a key:

```sql
ALTER TABLE sales
CLUSTER BY (order_date);
```

## View the clustering key:

```sql
SHOW TABLES LIKE 'SALES';
```

## Remove it:

```sql
ALTER TABLE sales
DROP CLUSTERING KEY;
```

## Suspend or resume automatic clustering:

```sql
ALTER TABLE sales SUSPEND RECLUSTER;
ALTER TABLE sales RESUME RECLUSTER;
```

&nbsp;

&nbsp;

# Important distinction

| Feature                     | Purpose                                                      |
| --------------------------- | ------------------------------------------------------------ |
| Micro-partitions            | Automatic physical storage units for all Snowflake tables    |
| Partition pruning           | Skipping irrelevant micro-partitions using metadata          |
| Clustering key              | Improves how values are arranged across micro-partitions     |
| Automatic Clustering        | Background service that maintains a clustering key           |
| Search Optimization Service | Optimizes highly selective lookups and other search patterns |

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
