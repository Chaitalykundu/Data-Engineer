# Overview

- [Overview](#overview)
- [ETL vs ELT](#etl-vs-elt)
  - [ETL](#etl)
  - [ELT](#elt)
- [Difference between ELT and ETL](#difference-between-elt-and-etl)
- [ETL vs ELT](#etl-vs-elt-1)

&nbsp;

&nbsp;

&nbsp;

https://www.geeksforgeeks.org/difference-between-elt-and-etl/

# ETL vs ELT

Many enterprises are shifting from ETL to modern ELT architecture.

&nbsp;

## ETL

ETL is the traditional technique of extracting raw data from the source systems first, then Business logic or transformations are applied to it
for the users as required and finally processed data is loaded or stored in data warehouse for consumption.

&nbsp;

&nbsp;

## ELT

ELT is the approach where data is initially extracted raw data from the source and loaded into the data warehouse typically in its raw form.
Subsequently data transformations are carried out within the data warehouse itself.

&nbsp;

&nbsp;

# Difference between ELT and ETL

| ELT                                                                                                        | ETL                                                                                   |
| ---------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| ELT tools do not require additional hardware                                                               | ETL tools require specific hardware with their own engines to perform transformations |
| Mostly Hadoop or NoSQL database to store data.Rarely RDBMS is used                                         | RDBMS is used exclusively to store data                                               |
| As all components are in one system, loading is done only once                                             | As ETL uses staging area, extra time is required to load the data                     |
| Time to transform data is independent of the size of data The system has to wait for large sizes of data.  | As the size of data increases, transformation time also increases                     |
| It is cost effective and available to all business using SaaS solution                                     | Not cost effective for small and medium business                                      |
| The data transformed is used by data scientists and advanced analysts                                      | The data transformed is used by users reading report and SQL coders                   |
| Creates ad hoc views.Low cost for building and maintaining                                                 | Views are created based on multiple scripts.Deleting view means deleting data         |
| Best for unstructured and non-relational data. Ideal for data lakes. Suited for very large amounts of data | Best for relational and structured data. Better for small to medium amounts of data   |

&nbsp;

&nbsp;

# ETL vs ELT

| Feature                 | ETL (Extract → Transform → Load)          | ELT (Extract → Load → Transform)        |
| ----------------------- | ----------------------------------------- | --------------------------------------- |
| Where transform happens | Outside the warehouse (e.g., Spark, SSIS) | Inside the warehouse (e.g., dbt)        |
| Order                   | Data is transformed before loading        | Data is loaded first, transformed later |
| Tools                   | Informatica, Talend, SSIS, Spark          | Fivetran, Airbyte + dbt                 |
| Performance             | Slower for large data                     | Faster, leverages warehouse compute     |
| Scalability             | Often limited                             | Cloud-native scalability                |
