# Overview

- [Overview](#overview)
- [Data Warehousing](#data-warehousing)
- [Top 7 Purposes of a Data Warehouse](#top-7-purposes-of-a-data-warehouse)
- [Key Characteristics](#key-characteristics)
- [Example Use Case](#example-use-case)
- [Basic Data Flow in Data Warehousing:](#basic-data-flow-in-data-warehousing)
- [Data Warehouse vs Database (OLTP vs OLAP)](#data-warehouse-vs-database-oltp-vs-olap)

&nbsp;

&nbsp;

&nbsp;

# Data Warehousing

A Data Warehouse(DW) is a system used for reporting and data analysis, where data from different operational systems is collected, cleaned, transformed, and stored for historical and business intelligence purposes.

&nbsp;

A Data Warehouse (DW) is a centralized repository that stores large volumes of structured data from multiple sources, designed to support reporting, analysis, and decision-making.

It functions on basis of OLAP (Online Analytical Processing)

&nbsp;

&nbsp;

# Top 7 Purposes of a Data Warehouse

|   # | Purpose                               | Description                                                                                            |
| --: | ------------------------------------- | ------------------------------------------------------------------------------------------------------ |
|  1️⃣ | **Decision Support**                  | Helps executives, managers, and analysts make data-driven decisions using accurate and historical data |
|  2️⃣ | **Historical Data Storage**           | Maintains data over time, allowing users to analyze trends, seasonality, and changes                   |
|  3️⃣ | **Data Consolidation**                | Collects and integrates data from multiple heterogeneous sources (ERP, CRM, Excel, etc.)               |
|  4️⃣ | **Improved Query Performance**        | Optimized for read-heavy analytical queries that would be slow on transactional databases              |
|  5️⃣ | **Data Consistency**                  | Provides a "single source of truth" with standardized formats, definitions, and metrics                |
|  6️⃣ | **Advanced Reporting & Analytics**    | Supports BI tools (Power BI, Tableau, Looker) for dashboards, KPIs, and ad-hoc analysis                |
|  7️⃣ | **Support for Data Mining and AI/ML** | Prepares clean, historical datasets for predictive modeling and machine learning workflows             |

&nbsp;

&nbsp;

# Key Characteristics

| Feature              | Description                                                              |
| -------------------- | ------------------------------------------------------------------------ |
| **Subject-Oriented** | Organized around key business subjects (e.g., sales, finance, customers) |
| **Integrated**       | Combines data from different sources (databases, files, APIs)            |
| **Time-Variant**     | Stores historical data (not just current data)                           |
| **Non-Volatile**     | Once data is entered, it is not updated or deleted—only appended         |

&nbsp;

&nbsp;

# Example Use Case

A retail company collects sales data from all its stores daily. It loads this into a data warehouse to:

- Track monthly revenue trends
- Analyze top-selling products
- Forecast future sales

&nbsp;

&nbsp;

# Basic Data Flow in Data Warehousing

```pgsql
Operational DBs / External Sources
        ↓
      ETL Process
(Extract → Transform → Load)
        ↓
   Staging Area (optional)
        ↓
    Data Warehouse
        ↓
  Reporting / Dashboards
```

&nbsp;

&nbsp;

# Data Warehouse vs Database (OLTP vs OLAP)

| Feature    | Database (OLTP)           | Data Warehouse (OLAP)    |
| ---------- | ------------------------- | ------------------------ |
| Purpose    | Run day-to-day operations | Analyze business data    |
| Operations | INSERT, UPDATE, DELETE    | SELECT (Read-heavy)      |
| Data       | Current transactional     | Historical, aggregated   |
| Users      | Frontline employees       | Business analysts, execs |

&nbsp;

&nbsp;
