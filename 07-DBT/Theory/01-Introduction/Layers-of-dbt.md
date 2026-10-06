# Content

- [Content](#content)
- [Layers of dbt](#layers-of-dbt)
- [1. Source / RAW](#1-source--raw)
    - [Example:](#example)
- [2. Staging layer](#2-staging-layer)
    - [Example:](#example-1)
- [3. Intermediate layer](#3-intermediate-layer)
    - [Example:](#example-2)
- [4. Marts / Curated layer](#4-marts--curated-layer)
    - [Examples:](#examples)
- [5. Semantic layer](#5-semantic-layer)
    - [Examples:](#examples-1)
- [Easy way to remember](#easy-way-to-remember)

&nbsp;

&nbsp;

&nbsp;

# Layers of dbt

dbt does not mandate a fixed number of layers. The layers are an architectural pattern used to organize transformations.

&nbsp;

&nbsp;

```
Source Systems
      ↓
Snowflake RAW
      ↓
┌─────────────────────┐
│ 1. Staging          │
└─────────────────────┘
      ↓
┌─────────────────────┐
│ 2. Intermediate     │
└─────────────────────┘
      ↓
┌─────────────────────┐
│ 3. Marts / Curated  │
└─────────────────────┘
      ↓
┌─────────────────────┐
│ 4. Semantic         │
└─────────────────────┘
      ↓
BI / Analytics
```

&nbsp;

&nbsp;

# 1. Source / RAW

Technically, RAW is usually not a dbt transformation layer. It is the data loaded by tools such as Fivetran, Snowpipe, etc.

### Example:

```
RAW.CUSTOMERS
RAW.ORDERS
RAW.PRODUCTS
```

Data is generally kept close to its source format.

&nbsp;

# 2. Staging layer

Purpose: clean and standardize.

Typical work:

- Rename columns
- Cast data types
- Basic filtering
- Standardize values
- Basic cleaning

&nbsp;

### Example:

```sql
SELECT
    customer_id,
    UPPER(customer_name) AS customer_name,
    created_at::DATE AS created_date
FROM {{ source('raw', 'customers') }}
```

&nbsp;

Think:

RAW → Clean source data

&nbsp;

&nbsp;

# 3. Intermediate layer

Purpose: perform reusable/complex transformations.

Typical work:

- Joins
- Multiple-step transformations
- Complex calculations
- Aggregations
- Business-rule preparation

&nbsp;

### Example:

```sql
SELECT
    c.customer_id,
    SUM(o.order_amount) AS total_sales
FROM {{ ref('stg_customers') }} c
JOIN {{ ref('stg_orders') }} o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id
```

Think:

Clean data → Combine and prepare

&nbsp;

&nbsp;

# 4. Marts / Curated layer

This is where you create business-ready datasets.

Usually:

```
Dimensions
    +
Facts
    ↓
Data Marts
```

&nbsp;

### Examples:

```
dim_customer
dim_product
dim_date

fct_orders
fct_sales
fct_payments
```

These are optimized for analytics and reporting.

&nbsp;

Think:

Prepared data → Business-ready tables

&nbsp;

&nbsp;

# 5. Semantic layer

This is about business meaning and metrics, rather than simply another cleaning layer.

### Examples:
```
Revenue
Net Revenue
Profit
Average Order Value
Customer Count
Customer Lifetime Value
```

For example:

```
Net Revenue =
Gross Revenue - Discounts - Refunds
```

The goal is to ensure that different analysts/tools use the same definition of a metric.

&nbsp;

&nbsp;

&nbsp;

# Easy way to remember

| Layer             | Main question                               |
| ----------------- | ------------------------------------------- |
| **RAW**           | What did we receive?                        |
| **Staging**       | Can we clean and standardize it?            |
| **Intermediate**  | How do we combine/process it?               |
| **Marts/Curated** | What data does the business need?           |
| **Semantic**      | What do these metrics mean to the business? |


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

&nbsp;

&nbsp;
