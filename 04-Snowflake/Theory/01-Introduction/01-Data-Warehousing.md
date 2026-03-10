# Overview

- [Overview](#overview)
- [Data Warehousing](#data-warehousing)
- [Data Warehousing](#data-warehousing-1)
  - [Example:](#example)
- [Key Characteristics of Data Warehouse](#key-characteristics-of-data-warehouse)
  - [1. Subject-Oriented](#1-subject-oriented)
    - [Examples:](#examples)
  - [Integrated](#integrated)
  - [3. Time-Variant](#3-time-variant)
  - [4. Non-Volatile](#4-non-volatile)
- [2. Data Warehouse Architecture](#2-data-warehouse-architecture)
  - [Data Sources](#data-sources)
  - [ETL / ELT Process](#etl--elt-process)
- [Types of Data in Data Warehouse](#types-of-data-in-data-warehouse)
  - [1. Structured Data](#1-structured-data)
  - [2. Semi-Structured Data](#2-semi-structured-data)
- [3. Unstructured Data](#3-unstructured-data)

&nbsp;

&nbsp;

&nbsp;

# Data Warehousing

Data Warehousing is the process of **collecting**, **storing**, and **managing** large volumes of data from different sources so that organizations can analyze it and make better decisions.

&nbsp;

&nbsp;

# Data Warehousing

A Data Warehouse is a centralized system where data from multiple systems (databases, applications, files, APIs) is integrated and stored for reporting, analytics, and business intelligence.

&nbsp;

### Example:

A company may have data from:

- Sales system
- Customer database
- Website analytics
- Finance system

All these data sources are combined into one warehouse for analysis.

&nbsp;

Modern cloud warehouses include tools like **Snowflake**, **Amazon Redshift**, and **Google BigQuery**

&nbsp;

&nbsp;

&nbsp;

# Key Characteristics of Data Warehouse

A data warehouse has **four** main characteristics.

1. Subject-Oriented
2. Integrated
3. Time-Variant
4. Non-Volatile

&nbsp;

&nbsp;

## 1. Subject-Oriented

Data is organized based on business subjects.

### Examples:

- Sales
- Customers
- Products
- Finance

Instead of storing data by application, it is organized by business domain.

&nbsp;

&nbsp;

## Integrated

Data comes from multiple sources but is cleaned and standardized before storing.

| Source  | Format      |
| ------- | ----------- |
| CRM     | Customer_ID |
| Website | Cust_ID     |

&nbsp;

In the warehouse, both are transformed into one common field:

```
CUSTOMER_ID
```

&nbsp;

&nbsp;

## 3. Time-Variant

Data warehouses store historical data.

| Date | Sales |
| ---- | ----- |
| 2023 | 5M    |
| 2024 | 7M    |
| 2025 | 10M   |

&nbsp;

&nbsp;

This allows companies to analyze trends over time.

&nbsp;

&nbsp;

## 4. Non-Volatile

Once data is loaded into the warehouse, it is not frequently updated or deleted.

Instead of updates, new records are added.

&nbsp;

&nbsp;

# 2. Data Warehouse Architecture

A typical architecture has **three** layers.

```
Data Sources
     ↓
ETL / ELT Process
     ↓
Data Warehouse
     ↓
BI & Analytics Tools
```

&nbsp;

&nbsp;

## Data Sources

Examples:

- Databases
- APIs
- Files (CSV, JSON)
- Applications

&nbsp;

&nbsp;

## ETL / ELT Process

Data is processed using ETL tools such as:

- dbt
- Apache Airflow
- Azure Data Factory

&nbsp;

ETL stands for:

| Step      | Meaning                |
| --------- | ---------------------- |
| Extract   | Get data from source   |
| Transform | Clean and process data |
| Load      | Store into warehouse   |

&nbsp;

&nbsp;

&nbsp;

# Types of Data in Data Warehouse

## 1. Structured Data

Data with fixed schema.

Example:

| ID  | Name  | Age |
| --- | ----- | --- |
| 1   | Rahul | 30  |

&nbsp;

## 2. Semi-Structured Data

Flexible format like JSON.

Example:

```json
{
  "name": "Rahul",
  "age": 30
}
```

Platforms like Snowflake support this using **VARIANT** data type.

&nbsp;

&nbsp;

# 3. Unstructured Data

Data without a fixed structure.

Examples:

- Images
- Videos
- Emails
- Documents

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
