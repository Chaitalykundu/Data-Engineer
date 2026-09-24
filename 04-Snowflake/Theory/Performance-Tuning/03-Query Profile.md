# Query Profile

Query Profile gives you the execution details of a query.

think of it as : **What exactly did Snowflake do to execute my SQL**

For example:

```
Table Scan
    ↓
Filter
    ↓
Join
    ↓
Aggregation
    ↓
Sort
    ↓
Result
```

&nbsp;

&nbsp;

# What to Look For in Query Profile

Focus on these five things.

1. Table Scan
2. Partition Pruning
