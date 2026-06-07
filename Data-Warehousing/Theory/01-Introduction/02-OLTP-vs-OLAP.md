# Overview

- [Overview](#overview)
- [OLTP and OLAP](#oltp-and-olap)
  - [OLTP](#oltp)
    - [Example: Amazon Website](#example-amazon-website)
    - [Characteristics of OLTP](#characteristics-of-oltp)
  - [OLAP](#olap)
    - [Characteristics of OLAP](#characteristics-of-olap)
- [Database vs Data Warehouse (OLTP vs OLAP)](#database-vs-data-warehouse-oltp-vs-olap)
- [Real-Life Example: Amazon](#real-life-example-amazon)
  - [OLTP System](#oltp-system)
    - [Typical OLTP table](#typical-oltp-table)
    - [Example query](#example-query)
  - [OLAP System](#olap-system)
    - [Example query](#example-query-1)
- [Why Not Use OLTP for Analytics?](#why-not-use-oltp-for-analytics)
    - [Problems of Using OLTP for Analytics](#problems-of-using-oltp-for-analytics)
      - [1. Performance Issues](#1-performance-issues)
      - [2. Impacts Business Operations](#2-impacts-business-operations)
      - [3. Limited Historical Data](#3-limited-historical-data)

&nbsp;

&nbsp;

&nbsp;

# OLTP and OLAP

## OLTP

OLTP = Online Transaction Processing

OLTP systems are designed run day-to-day business operations or for transactional workloads such as order creation, payments, and inventory updates.

Think of them as systems where users continuously `insert`, `update`, and `delete` data.

They prioritize fast `inserts`, `updates`, and `deletes` while maintaining data consistency.

&nbsp;

### Example: Amazon Website

When a customer:

- Creates an account
- Places an order
- Makes a payment
- Cancels an order

&nbsp;

### Characteristics of OLTP

- Handles thousands of transactions
- Fast inserts and updates
- Stores current operational data
- Highly normalized tables
- Supports many concurrent users

&nbsp;

&nbsp;

## OLAP

OLAP systems are designed for analytical workloads such as reporting, dashboards, trend analysis, and business intelligence.

They store large amounts of historical data and are optimized for complex queries, aggregations, and high-performance reads.

&nbsp;

### Characteristics of OLAP

- Handles large datasets
- Complex queries
- Stores Historical data
- Helps in Aggregations and reporting
- Optimized for reading large volumes of data

&nbsp;

In a typical data engineering architecture, data is **extracted from OLTP systems** and **loaded into an OLAP** data warehouse like Snowflake, where business users perform analytics without affecting operational systems.

&nbsp;

&nbsp;

# Database vs Data Warehouse (OLTP vs OLAP)

| Feature          | OLTP (Online Transaction Processing) | OLAP (Online Analytical Processing) |
| ---------------- | ------------------------------------ | ----------------------------------- |
| Purpose          | Run day-to-day business operations   | Analyze business data               |
| Users            | Customers, Employees                 | Analysts, Managers, Executives      |
| Data             | Current data                         | Historical data                     |
| Operations       | Insert, Update, Delete               | Read and Analyze                    |
| Query Type       | Simple queries                       | Complex queries                     |
| Response Time    | Milliseconds                         | Seconds to minutes                  |
| Data Volume      | Current operational data             | Large historical data               |
| Database Design  | Normalized                           | Denormalized (Star Schema)          |
| Example          | Placing an order                     | Analyzing yearly sales trends       |
| Database Example | MySQL, PostgreSQL                    | Snowflake, Redshift, BigQuery       |

&nbsp;

&nbsp;

&nbsp;

# Real-Life Example: Amazon

There are two types of work happening:

- Running the business → Taking orders, updating inventory, processing payments.
- Analyzing the business → Finding revenue trends, top-selling products, customer behavior.

These require different systems.

&nbsp;

## OLTP System

When a customer buys a laptop:

```
Customer places order
       ↓
Payment processed
       ↓
Inventory updated
       ↓
Order status created
```

&nbsp;

&nbsp;

The database must:

- Save the order immediately
- Update stock
- Process payment
- Handle thousands of transactions simultaneously

&nbsp;

&nbsp;

### Typical OLTP table

| Order_ID | Customer_ID | Product_ID | Amount |
| -------- | ----------- | ---------- | ------ |
| 1001     | 501         | 2001       | 50000  |

&nbsp;

### Example query

```sql
INSERT INTO ORDERS
VALUES (1001, 501, 2001, 50000);
```

This is an OLTP operation.

&nbsp;

Find a specific order:

```sql
SELECT *
FROM Orders
WHERE Order_ID = 1001;
```

&nbsp;

&nbsp;

&nbsp;

## OLAP System

Now the CEO asks:

> Show revenue by product category for the last 5 years. <br>
> Which product generated the most revenue? <br>
> Which region performed best?<br>
> What was last year's growth?<br>
> Who are the top customers?<br>

&nbsp;

The system needs to:

- Read millions of rows
- Aggregate data
- Compare years
- Generate reports

&nbsp;

&nbsp;

### Example query

```sql
SELECT
    YEAR(order_date),
    product_category,
    SUM(amount) AS revenue
FROM sales_fact
GROUP BY
    YEAR(order_date),
    product_category;
```

This is an OLAP operation.

&nbsp;

&nbsp;

# Why Not Use OLTP for Analytics?

While OLTP is excellent for operational tasks, it is not suitable for analytics.

If we want to do any analytics then OLTP must:

- Join multiple tables
- Scan millions of records
- Aggregate data
- Process historical information

These operations are expensive and slow.

&nbsp;

&nbsp;

### Problems of Using OLTP for Analytics

#### 1. Performance Issues

OLTP is optimized for:

- INSERT
- UPDATE
- DELETE
- Single-row lookups

&nbsp;

```sql
SELECT *
FROM Orders
WHERE Order_ID = 101;
```

Very fast.

&nbsp;

But analytics queries:

```sql
SELECT region,
       SUM(revenue)
FROM orders
GROUP BY region;
```

Need to scan huge amounts of data.

Result:

- Slow reports
- Increased database load
- Poor user experience

&nbsp;

&nbsp;

#### 2. Impacts Business Operations

Imagine:

- 10,000 customers placing orders
- Finance team running a yearly revenue report

Both use the same database.

Heavy analytical queries can:

- Lock resources
- Consume CPU
- Use memory
- Slow transactions

Customers may experience:

- Slow checkout
- Delayed payments
- Website lag

&nbsp;

&nbsp;

#### 3. Limited Historical Data

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;