# Content

- [Content](#content)
- [Questions](#questions)
  - [Introduction](#introduction)
  - [Data Warehoousing](#data-warehoousing)
    - [Layers in DW](#layers-in-dw)
    - [OLTP vs OLAP](#oltp-vs-olap)
  - [ETL vs ELT](#etl-vs-elt)
  - [Star and Snowflake Schemas](#star-and-snowflake-schemas)
- [Answer](#answer)
  - [ETL vs ELT](#etl-vs-elt-1)
    - [Explain ETL vs ELT architecture diagram](#explain-etl-vs-elt-architecture-diagram)
  - [Star and Snowflake Schemas](#star-and-snowflake-schemas-1)
    - [1. What is the difference between Star Schema and Snowflake Schema?](#1-what-is-the-difference-between-star-schema-and-snowflake-schema)

&nbsp;

&nbsp;

&nbsp;

# Questions

## Introduction

## Data Warehoousing

1. What is data warehouse
2. Why Do We Need a Data Warehouse
3. Key Characteristics of DW

&nbsp;

&nbsp;

### Layers in DW

1. How many layers are there in DW

&nbsp;

&nbsp;

### OLTP vs OLAP

1. What is OLTP
2. What is OLAP

&nbsp;

&nbsp;

&nbsp;

## ETL vs ELT

1. Explain ETL vs ELT architecture diagram

&nbsp;

&nbsp;

&nbsp;

&nbsp;

## Star and Snowflake Schemas

1. What is the difference between Star Schema and Snowflake Schema?

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Answer

## ETL vs ELT

### Explain ETL vs ELT architecture diagram

In ETL architecture, data is extracted from source systems, transformed in an ETL tool such as Informatica or Talend, and then loaded into the data warehouse. Only processed data reaches the warehouse.

In ELT architecture, data is extracted and loaded directly into a cloud data warehouse such as Snowflake. Transformations are performed inside the warehouse using SQL or dbt. ELT is preferred in modern cloud environments because it leverages the scalability and compute power of the warehouse, provides faster ingestion, and allows data to be reprocessed when business requirements change.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

## Star and Snowflake Schemas

### 1. What is the difference between Star Schema and Snowflake Schema?

A Star Schema consists of a central fact table connected directly to denormalized dimension tables. It is simple, requires fewer joins, and provides better query performance. A Snowflake Schema is a normalized version of a Star Schema where dimension tables are split into multiple related tables to reduce redundancy. It improves data integrity and storage efficiency but requires more joins and is more complex. In modern cloud data warehouses, Star Schema is generally preferred for analytics workloads.

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
