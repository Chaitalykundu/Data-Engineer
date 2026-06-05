# Overview

- [Overview](#overview)
- [Relationship Between Data Warehousing and Data Modeling](#relationship-between-data-warehousing-and-data-modeling)
  - [Step 1: Data Warehouse Goal](#step-1-data-warehouse-goal)
  - [Step 2: Data Modeling Organizes the Data](#step-2-data-modeling-organizes-the-data)
  - [Example: Dimensional Modeling](#example-dimensional-modeling)
    - [Fact Table](#fact-table)
    - [Dimension Tables](#dimension-tables)

&nbsp;

&nbsp;

&nbsp;

# Relationship Between Data Warehousing and Data Modeling

## Step 1: Data Warehouse Goal

A company wants to analyze:

- Sales
- Customers
- Products
- Revenue trends

The Data Warehouse stores all this historical data.

&nbsp;

```
Source Systems
      ↓
Data Warehouse
      ↓
Reports & Analytics
```

&nbsp;

But how should the data be organized inside the warehouse?

That's where Data Modeling comes in.

&nbsp;

&nbsp;

## Step 2: Data Modeling Organizes the Data

Suppose you store everything in one giant table:

| Order ID | Customer Name | Product Name | City | Category | Revenue |
| -------- | ------------- | ------------ | ---- | -------- | ------- |

After millions of rows:

- Duplicate data
- Large storage
- Slow queries
- Difficult maintenance

Instead, we model the data.

&nbsp;

&nbsp;

## Example: Dimensional Modeling

A common Data Warehouse design is:

```
           DIM_CUSTOMER
                 |
DIM_PRODUCT --- FACT_SALES --- DIM_DATE
                 |
            DIM_STORE
```

&nbsp;

### Fact Table

Stores business events.

&nbsp;

| Order ID | Customer ID | Product ID | Revenue |
| -------- | ----------- | ---------- | ------- |
| 101      | 1           | 10         | 500     |

&nbsp;

### Dimension Tables

Store descriptive information.

&nbsp;

DIM_CUSTOMER

| Customer ID | Name     | City     |
| ----------- | -------- | -------- |
| 1           | Chaitaly | Siliguri |


&nbsp;

DIM_PRODUCT

| Product ID | Product | Category    |
| ---------- | ------- | ----------- |
| 10         | Laptop  | Electronics |

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
