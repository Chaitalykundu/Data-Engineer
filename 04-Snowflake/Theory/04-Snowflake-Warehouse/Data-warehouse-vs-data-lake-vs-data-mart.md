# Data Warehouse vs Data Lake vs Data Mart

| Feature               | **Data Warehouse**                         | **Data Lake**                             | **Data Mart**                           |
| --------------------- | ------------------------------------------ | ----------------------------------------- | --------------------------------------- |
| **Purpose**           | Analytics & reporting                      | Store all types of data                   | Department/business-specific analytics  |
| **Data**              | Mostly structured                          | Structured, semi-structured, unstructured | Mostly structured                       |
| **Schema**            | Schema-on-write                            | Schema-on-read                            | Schema-on-write                         |
| **Data processing**   | Cleaned & transformed                      | Raw or lightly processed                  | Usually transformed from warehouse      |
| **Scope**             | Enterprise-wide                            | Enterprise-wide / broad                   | Specific department/domain              |
| **Users**             | BI analysts, data analysts, business users | Data engineers, data scientists           | Business/department users               |
| **Examples**          | Snowflake, Redshift, BigQuery              | S3, ADLS, GCS                             | Sales Mart, Finance Mart, HR Mart       |
| **Typical data**      | Sales, customers, transactions             | CSV, JSON, logs, images, source dumps     | Sales KPIs, finance reports             |
| **Query performance** | Optimized for analytics                    | Usually less optimized directly           | Highly optimized for specific use cases |
