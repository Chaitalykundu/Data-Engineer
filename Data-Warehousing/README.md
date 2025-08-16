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
