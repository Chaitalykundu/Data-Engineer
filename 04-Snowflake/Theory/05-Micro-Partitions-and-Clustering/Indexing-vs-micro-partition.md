# Content

- [Content](#content)
- [Difference btw indexes and micro-partitions](#difference-btw-indexes-and-micro-partitions)
- [Example](#example)
- [Correct conclusion](#correct-conclusion)

&nbsp;

&nbsp;

&nbsp;

# Difference btw indexes and micro-partitions

| Aspect            | Traditional indexes              | Snowflake micro-partitions            |
| ----------------- | -------------------------------- | ------------------------------------- |
| Management        | Created and maintained manually  | Created automatically                 |
| Extra storage     | Requires separate storage        | Metadata is maintained automatically  |
| Data modification | Indexes must be updated          | New micro-partitions are created      |
| Best for          | Finding a few rows quickly       | Scanning and filtering large datasets |
| Maintenance       | Can require rebuilding or tuning | Minimal user maintenance              |
| Query method      | Index lookup                     | Micro-partition pruning               |
| Common workload   | OLTP applications                | OLAP and data warehousing             |

&nbsp;

&nbsp;

# Example

To find one customer by ID, a traditional database index may be faster:

```sql
SELECT *
FROM customers
WHERE customer_id = 101;
```

&nbsp;

&nbsp;

But for an analytical query over millions of sales records, Snowflake micro-partition pruning is generally more suitable:

```sql
SELECT region, SUM(sales_amount)
FROM sales
WHERE order_date >= '2026-01-01'
GROUP BY region;
```

&nbsp;

&nbsp;

# Correct conclusion

- Indexes are usually better for OLTP systems involving frequent, highly selective single-row lookups.
- Micro-partitions are better for Snowflake’s OLAP workloads, involving large scans, aggregations and analytical queries.
- Micro-partitions do not always make point-lookups fast. For highly selective searches in Snowflake, the Search - Optimization Service may improve performance.

&nbsp;

&nbsp;

&nbsp;

Interview answer: Indexes and micro-partitions are designed for different workloads. Indexes are generally better for highly selective OLTP lookups, while Snowflake micro-partitions are better for large-scale analytical workloads because they provide automatic partitioning and metadata-based pruning with much less maintenance.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
