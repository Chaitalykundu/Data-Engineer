# How Fact Tables and Dimension Tables Work Together

Question:

> “What was total revenue by product category?”

&nbsp;

&nbsp;

```
FACT_SALES
(Order Revenue)
      ↓
DIM_PRODUCT
(Category)
      ↓
GROUP BY Category
```

&nbsp;

&nbsp;

```sql
SELECT
    p.category,
    SUM(f.revenue)
FROM FACT_SALES f
JOIN DIM_PRODUCT p
ON f.product_id = p.product_id
GROUP BY p.category;
```

&nbsp;

&nbsp;

# Simple Real-Life Example

Imagine a supermarket bill.

Fact Table = Bill Data

```
Sold 3 milk packets = ₹180
```

&nbsp;

Dimension Tables = Extra Details

```
Customer → Rahul
Product → Milk
Date → 16 Jun 2026
Store → Siliguri
```

&nbsp;

&nbsp;

# Quick Comparison

| Feature  | Fact Table               | Dimension Table                    |
| -------- | ------------------------ | ---------------------------------- |
| Stores   | Metrics (numeric values) | Descriptions                       |
| Example  | Revenue , profit, cost   | Product Name , customer name, city |
| Size     | Large                    | Smaller                            |
| Used For | Aggregation              | Filtering                          |
| Contains | Foreign keys + measures  | Attributes                         |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
