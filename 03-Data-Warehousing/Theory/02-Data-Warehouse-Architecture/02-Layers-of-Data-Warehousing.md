# Content

- [Content](#content)
- [Layers](#layers)
- [Overall Data Flow](#overall-data-flow)
- [1. Raw Layer](#1-raw-layer)
  - [Purpose](#purpose)
  - [Characteristics](#characteristics)
  - [Example](#example)
  - [Why Important?](#why-important)
- [2. Staging Layer](#2-staging-layer)
  - [Purpose](#purpose-1)
  - [Activities](#activities)
  - [Example](#example-1)
  - [Why Important?](#why-important-1)
- [3. Integration Layer](#3-integration-layer)
  - [Purpose](#purpose-2)
  - [Activities](#activities-1)
  - [Example](#example-2)
  - [Why Important?](#why-important-2)
- [4. Presentation Layer](#4-presentation-layer)
  - [Purpose](#purpose-3)
  - [Fact Tables](#fact-tables)
    - [Examples:](#examples)
  - [Dimension Tables](#dimension-tables)
    - [Examples:](#examples-1)

&nbsp;

&nbsp;

&nbsp;

# Layers

A Data Warehouse is typically organized into layers so that data moves from raw source data to business-ready reporting data in a structured way.

A Data Warehouse is commonly divided into four layers: Raw, Staging, Integration, and Presentation. The Raw Layer stores source data without modification. The Staging Layer performs basic cleansing and standardization. The Integration Layer combines data from multiple sources and applies business rules. The Presentation Layer contains fact and dimension tables optimized for reporting and analytics. Data flows sequentially through these layers to ensure quality, consistency, and efficient reporting.

&nbsp;

&nbsp;

# Overall Data Flow

```
Source Systems
      |
      v
Raw Layer
      |
      v
Staging Layer
      |
      v
Integration Layer
      |
      v
Presentation Layer
      |
      v
Reports / Dashboards
```

&nbsp;

&nbsp;

# 1. Raw Layer

## Purpose

Store data exactly as it arrives from source systems.

&nbsp;

```
+----------------------+
|   Source Systems     |
+----------------------+
| Website              |
| CRM                  |
| ERP                  |
| APIs                 |
+----------+-----------+
           |
           | Extract
           v
+----------------------+
| EL Tool              |
+----------------------+
| Airbyte              |
| Fivetran             |
| Python               |
+----------+-----------+
           |
           | Load
           v
+------------------------------------------------------+
|                 DATA WAREHOUSE                       |
|                    Snowflake                         |
|                                                      |
|  RAW LAYER                                           |
|  --------------------------------------------------  |
|  orders_raw                                          |
|  customers_raw                                       |
|  products_raw                                        |
+------------------------------------------------------+
```

&nbsp;

&nbsp;

## Characteristics

- Exact copy of source data
- No business rules
- No transformations
- Used for auditing and recovery

&nbsp;

&nbsp;

## Example

Source:

| Cust_ID | Cust_Name |
| ------- | --------- |
| 1 | john |

&nbsp;

Raw Table:

| Cust_ID | Cust_Name |
| ------- | --------- |
| 1       | john      |

No changes are made.

&nbsp;

&nbsp;

## Why Important?

Suppose a transformation is incorrect.

Instead of requesting data again from source systems, you can rebuild from the raw layer.

&nbsp;

&nbsp;

# 2. Staging Layer

## Purpose

Perform basic cleaning and standardization.

&nbsp;

```
+------------------------------------------------------+
|                 DATA WAREHOUSE                       |
|                    Snowflake                         |
|                                                      |
|  RAW LAYER                                           |
|  --------------------------------------------------  |
|  orders_raw                                          |
|  customers_raw                                       |
|  products_raw                                        |
|                                                      |
|                 DBT Transformations                  |
|                                                      |
|  STAGING LAYER                                       |
|  --------------------------------------------------  |
|  stg_orders                                          |
|  stg_customers                                       |
|  stg_products                                        |
+------------------------------------------------------+
```

&nbsp;

&nbsp;

## Activities

- Rename columns
- Standardize formats
- Convert data types
- Remove invalid records
- Remove duplicates

&nbsp;

&nbsp;

## Example

Raw Data:

| Cust_ID | Cust_Name |
| ------- | --------- |
| 1       | john      |
| 2       | ALICE     |

&nbsp;

Staged Data:

| customer_id | customer_name |
| ----------- | ------------- |
| 1           | John          |
| 2           | Alice         |

&nbsp;

## Why Important?

Different systems use different naming conventions.

The staging layer creates consistency.

&nbsp;

&nbsp;

# 3. Integration Layer

## Purpose

Combine data from multiple systems and apply business logic.

&nbsp;

```
+------------------------------------------------------+
|                 DBT Transformations                  |
|                                                      |
|  STAGING LAYER                                       |
|  --------------------------------------------------  |
|  stg_orders                                          |
|  stg_customers                                       |
|  stg_products                                        |
|                                                      |
|                 DBT Transformations                  |
|                                                      |
|  INTEGRATION LAYER                                   |
|  --------------------------------------------------  |
|  int_customer_orders                                 |
|  int_sales_metrics                                   |
|  int_product_performance                             |
+------------------------------------------------------+
```

&nbsp;

&nbsp;

## Activities

- Join tables
- Apply business rules
- Calculate metrics
- Create reusable datasets

&nbsp;

&nbsp;

## Example

Orders:

| Order_ID | Customer_ID |
| -------- | ----------- |
| 101      | 1           |

Customers:

| Customer_ID | Customer_Name |
| ----------- | ------------- |
| 1 | John |

&nbsp;

Integrated Result:

| Order_ID | Customer_Name |
| -------- | ------------- |
| 101 | John |

&nbsp;

Business Rule Example

```
If Amount > 10000
      ↓
Premium Customer
Else
      ↓
Standard Customer
```

&nbsp;

&nbsp;

## Why Important?

This layer creates a single, trusted version of the data.

&nbsp;

&nbsp;

# 4. Presentation Layer

## Purpose

Provide business-ready data for reporting and analytics.

&nbsp;

```
+------------------------------------------------------+
|                 DBT Transformations                  |
|                                                      |
|  INTEGRATION LAYER                                   |
|  --------------------------------------------------  |
|  int_customer_orders                                 |
|  int_sales_metrics                                   |
|  int_product_performance                             |
|                                                      |
|                 DBT Transformations                  |
|                                                      |
|  PRESENTATION / MART LAYER                           |
|  --------------------------------------------------  |
|  fact_sales                                          |
|  dim_customer                                        |
|  dim_product                                         |
|  dim_date                                            |
|  sales_dashboard_mart                                |
+------------------------------------------------------+
```

This is the layer that business users and BI tools access.

&nbsp;

&nbsp;

## Fact Tables

Store measurable business events.

Fact_Sales

| Order_ID | Customer_ID | Amount |
| -------- | ----------- | ------ |
| 101      | 1           | 500    |

&nbsp;

### Examples

- Sales
- Orders
- Transactions
- Revenue

&nbsp;

&nbsp;

## Dimension Tables

Store descriptive information.

Dim_Customer

| Customer_ID | Customer_Name |
| ----------- | ------------- |
| 1           | John          |

Dim_Product

| Product_ID | Product_Name |
| ---------- | ------------ |
| 10 | Laptop |

&nbsp;

### Examples

- Customer
- Product
- Date
- Store

&nbsp;
