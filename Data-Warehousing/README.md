# Overview

- [Overview](#overview)
- [10-Day Data Warehousing Roadmap (Beginner Level)](#10-day-data-warehousing-roadmap-beginner-level)
- [Example Mini Project (for hands-on)](#example-mini-project-for-hands-on)
- [Phasewise](#phasewise)
  - [Phase 1: Introduction to Data Warehousing](#phase-1-introduction-to-data-warehousing)
  - [Phase 2: Components of a Data Warehouse](#phase-2-components-of-a-data-warehouse)
  - [Phase 3: Tools and Technologies](#phase-3-tools-and-technologies)
  - [Phase 4: Practice and Projects](#phase-4-practice-and-projects)
- [Revision](#revision)
  - [Phase 1: Why Data Warehousing Exists (1-2 Days)](#phase-1-why-data-warehousing-exists-1-2-days)
  - [Phase 2: Data Warehouse Architecture (2-3 Days)](#phase-2-data-warehouse-architecture-2-3-days)
  - [Phase 3: Data Modeling (4-5 Days)](#phase-3-data-modeling-4-5-days)
  - [Phase 4: ETL vs ELT (1 Day)](#phase-4-etl-vs-elt-1-day)
  - [Phase 5: Slowly Changing Dimensions (2-3 Days)](#phase-5-slowly-changing-dimensions-2-3-days)
  - [Phase 6: Data Warehouse Layers (2 Days)](#phase-6-data-warehouse-layers-2-days)
  - [Phase 7: Data Marts \& BI (1-2 Days)](#phase-7-data-marts--bi-1-2-days)
  - [Topics Frequently Asked in Interviews](#topics-frequently-asked-in-interviews)
- [Rev 2](#rev-2)
  - [Week 1: Foundations](#week-1-foundations)
  - [Week 2: Data Modeling](#week-2-data-modeling)
  - [Week 3: Modern Data Warehousing](#week-3-modern-data-warehousing)
  - [Week 4: Analytics Engineering](#week-4-analytics-engineering)

&nbsp;

&nbsp;

&nbsp;

# 10-Day Data Warehousing Roadmap (Beginner Level)

| Day | Topic                            | Goal                                           | Concepts / Keywords                         | Project Task                                                                     |
| --- | -------------------------------- | ---------------------------------------------- | ------------------------------------------- | -------------------------------------------------------------------------------- |
| 1️⃣  | What is Data Warehousing?        | Understand the need and purpose of a DW        | OLTP vs OLAP, historical data, analytics    | Choose a domain (Retail, HR, Sales) for your mini DW project                     |
| 2️⃣  | Data Warehouse Architecture      | Learn DW layers and how data flows             | Staging, Integration, Presentation          | Draw a simple DW architecture diagram for your chosen domain                     |
| 3️⃣  | ETL vs ELT                       | Understand how data is moved/transformed       | ETL tools, workflows, pipelines             | List the data sources and plan an ETL process                                    |
| 4️⃣  | Star and Snowflake Schemas       | Learn schema design                            | Fact tables, Dimension tables, schema types | Design a star schema for your project using dbdiagram.io or draw\.io             |
| 5️⃣  | Fact and Dimension Tables        | Deep dive into table types and purpose         | Grain, surrogate keys, SCD                  | Define and create your fact & dimension tables                                   |
| 6️⃣  | Slowly Changing Dimensions (SCD) | Learn how historical data is managed           | SCD Type 1, 2, 3                            | Add one SCD Type 2 dimension to your design                                      |
| 7️⃣  | Data Marts and Aggregates        | Understand how data is sliced for business use | Subject-area data marts, roll-up            | Create one data mart for a business use case (e.g., Sales Summary)               |
| 8️⃣  | Data Modeling Tools              | Visualize schema and relations                 | dbdiagram.io, Lucidchart, ERDPlus           | Finalize the DW schema model and share it as a PDF                               |
| 9️⃣  | SQL for DW                       | Practice data querying basics                  | SELECT, GROUP BY, JOIN, aggregation         | Simulate ETL: write SQL queries to load and transform your sample data           |
| 🔟  | Build & Present Mini Project     | Complete and explain your mini DW project      | End-to-end DW flow                          | Present a document or slides showing: source, schema, transformation, and output |

&nbsp;

&nbsp;

&nbsp;

# Example Mini Project (for hands-on)

- Domain: Retail
- Goal: Create a simple DW to analyze daily sales
- Fact Table: Sales_Fact
- Dimensions: Customer_Dim, Product_Dim, Store_Dim, Date_Dim
- Use Case: Show total revenue per product and region over time

&nbsp;

&nbsp;

&nbsp;

# Phasewise

## Phase 1: Introduction to Data Warehousing

| Step | Topic                       | Goal                                                       |
| ---- | --------------------------- | ---------------------------------------------------------- |
| 1️⃣   | What is a Data Warehouse?   | Understand the concept and purpose of a data warehouse     |
| 2️⃣   | OLTP vs OLAP                | Differentiate between transactional and analytical systems |
| 3️⃣   | Data Warehouse Architecture | Learn about layers: staging, integration, presentation     |
| 4️⃣   | ETL vs ELT                  | Understand the data movement and transformation processes  |
| 5️⃣   | Star vs Snowflake Schema    | Learn data modeling techniques for warehouses              |

&nbsp;

&nbsp;

## Phase 2: Components of a Data Warehouse

| Step | Topic                            | Goal                                                         |
| ---- | -------------------------------- | ------------------------------------------------------------ |
| 1️⃣   | Fact and Dimension Tables        | Understand how analytical data is structured                 |
| 2️⃣   | Slowly Changing Dimensions (SCD) | Learn techniques to manage historical data                   |
| 3️⃣   | Data Marts                       | Explore how subject-specific subsets of data warehouses work |
| 4️⃣   | Metadata and Data Lineage        | Learn how to track data sources and transformations          |
| 5️⃣   | Data Governance & Quality        | Importance of accurate, secure, and compliant data           |

&nbsp;

&nbsp;

## Phase 3: Tools and Technologies

| Step | Topic                               | Goal                                                    |
| ---- | ----------------------------------- | ------------------------------------------------------- |
| 1️⃣   | Popular Data Warehousing Tools      | Explore Snowflake, BigQuery, Redshift, Azure Synapse    |
| 2️⃣   | Introduction to ETL Tools           | Learn about tools like Talend, Informatica, Apache Nifi |
| 3️⃣   | Cloud vs On-prem Warehouses         | Understand the trade-offs and advantages                |
| 4️⃣   | SQL for Data Warehousing            | Learn basic SQL queries used in warehouses              |
| 5️⃣   | Introduction to Data Modeling Tools | Get hands-on with ERDPlus, dbdiagram.io, or Lucidchart  |

&nbsp;

&nbsp;

## Phase 4: Practice and Projects

| Step | Topic                                           | Goal                                                   |
| ---- | ----------------------------------------------- | ------------------------------------------------------ |
| 1️⃣   | Build a Mini Data Warehouse                     | Use sample data like retail, e-commerce, or HR         |
| 2️⃣   | Design a Star Schema                            | Model a dataset with fact/dimension structure          |
| 3️⃣   | Write ETL SQL Scripts                           | Practice inserting, transforming, and loading data     |
| 4️⃣   | Use a Cloud Platform (like Snowflake free tier) | Apply your knowledge with hands-on exercises           |
| 5️⃣   | Document Your Work                              | Practice good documentation for modeling and ETL logic |

&nbsp;

&nbsp;

&nbsp;

# Revision

### Phase 1: Why Data Warehousing Exists (1-2 Days)

Understand:

- OLTP vs OLAP
- Operational systems vs Analytical systems
- Why reporting databases are separated from - application databases
- Data silos
- Business Intelligence

&nbsp;

### Phase 2: Data Warehouse Architecture (2-3 Days)

```
Source Systems
      ↓
Data Ingestion
      ↓
Data Lake (Optional)
      ↓
Data Warehouse
      ↓
Data Marts
      ↓
BI Tools
```

&nbsp;

### Phase 3: Data Modeling (4-5 Days)

Most important topic.

- Fact Tables
- Dimension Tables
- Star Schema
- Snowflake Schema

&nbsp;

### Phase 4: ETL vs ELT (1 Day)

- ETL
- ELT
- Snowflake + DBT = ELT.

&nbsp;

### Phase 5: Slowly Changing Dimensions (2-3 Days)

- SCD Type 1
- SCD Type 2
- SCD Type 3

&nbsp;

### Phase 6: Data Warehouse Layers (2 Days)

- Bronze Layer : Raw data
- Silver Layer : Cleaned data
- Gold Layer : Business-ready data

&nbsp;

### Phase 7: Data Marts & BI (1-2 Days)

- Enterprise Data Warehouse
- Data Mart

&nbsp;

### Topics Frequently Asked in Interviews

- What is a Data Warehouse?
- Difference between OLTP and OLAP?
- Fact vs Dimension table?
- Star vs Snowflake schema?
- ETL vs ELT?
- What is a surrogate key?
- What is SCD Type 1 and Type 2?
- What is a Data Mart?
- Why Snowflake is suitable for Data Warehousing?
- Explain a warehouse architecture you worked on.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Rev 2

## Week 1: Foundations

- What is Data Warehouse?
- Why Data Warehouse?
- OLTP vs OLAP
- ETL vs ELT
- Data Warehouse Architecture

&nbsp;

&nbsp;

## Week 2: Data Modeling

- Fact Tables
- Dimension Tables
- Star Schema
- Snowflake Schema
- Surrogate Keys

&nbsp;

&nbsp;

## Week 3: Modern Data Warehousing

- Snowflake Architecture
- Stages
- Warehouses
- Databases
- Schemas

&nbsp;

&nbsp;

## Week 4: Analytics Engineering

- dbt Basics
- Staging Models
- Intermediate Models
- Mart Models
- Testing & Documentation
