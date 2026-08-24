# difference between micro partition and clustering

| Micro-partitioning                                                                      | Clustering                                                                      |
| --------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| Automatic storage mechanism in Snowflake.                                               | Optional optimization technique.                                                |
| Snowflake automatically splits all table data into micro-partitions.                    | You define columns that should be physically grouped together.                  |
| No `CREATE PARTITION` statement is needed.                                              | You can use `CLUSTER BY (column_name)`.                                         |
| Stores metadata such as `MIN`, `MAX`, distinct count, and NULL information for columns. | Improves the organization of data across micro-partitions for selected columns. |
| Enables partition pruning automatically.                                                | Makes partition pruning more effective for frequent query filters.              |
| No direct maintenance effort from you.                                                  | May incur automatic-clustering compute cost if enabled.                         |
| Exists for every standard Snowflake table.                                              | Use only for large tables with performance issues.                              |

&nbsp;

&nbsp;

## Example

`SALES` table with columns:

```sql
order_id, order_date, region, customer_id, amount
```

&nbsp;

Snowflake automatically creates micro-partitions when data is loaded. You do nothing.

But if users frequently run:

```sql
SELECT *
FROM sales
WHERE order_date BETWEEN '2026-01-01' AND '2026-01-31'
  AND region = 'India';
```

&nbsp;

and the table is large, you may define:

```sql
ALTER TABLE sales
CLUSTER BY (order_date, region);
```

&nbsp;

This reorganizes existing micro-partitions so similar order_date and region values are kept closer together. Snowflake can then skip more partitions.

&nbsp;

In one line:

> Micro-partitioning creates the storage units automatically; clustering organizes those units for better query performance.
