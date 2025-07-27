# Database Storage layer or Data layer

The Database Storage Layer is responsible for persistently **storing all data** (structured or semi-structured) in an **optimized, compressed, and columnar format.**

&nbsp;

When data is loaded into Snowflake, Snowflake reorganizes that data into its internal optimized, compressed, columnar format. Snowflake **_stores this optimized data in cloud storage_**.

&nbsp;

## Database Storage layer

- Stores table data and query results

- Data will be stored in **columnar** format

- Data will be stored in micro partitions

- Snowflake manages all aspects of how this data is stored i.e. the data organization, file size, structure, compression, metadata, statistics

- The data objects stored by Snowflake are not directly visible nor accessible by customers; they are only accessible through **SQL query** operations run using Snowflake.

- We can define cluster keys on large tables for better performance.

&nbsp;

&nbsp;

# Key Features

- **Optimized Storage Format**: Snowflake stores data in a highly optimized, compressed columnar format.
- **Cloud Storage Integration**: Data is stored on platforms like AWS S3, Azure Blob Storage, or Google Cloud Storage.
- **Micro-Partitioning**: Data is organized into small, column-structured units called “micro-partitions” for efficient storage and retrieval.
- **Storage and Compute Separation**: Snowflake separates the storage and compute layers, allowing each to scale independently.
- **SQL-Based Access**: Users interact with data solely through SQL queries without managing the underlying storage infrastructure.

&nbsp;

&nbsp;

### Key points

- Underlying Cloud storage (S3, Azure blob, GCP bucket)
- Virtually infinity storages (Scaling)
- Compressed & Encrypted
- Cloud data redundancy
- Pay only for stored data

&nbsp;

&nbsp;

# How Data Storage layer works

1. Snowflake stores all data into databases and the database is a **logical grouping of schemas** within a snowflake instance and Each database belongs to a single Snowflake account.

2. A schema is a **logical grouping of database objects** (tables, views, etc.). Each schema belongs to a single database.

3. The objects are primarily **tables** (permanent, temporary and transient) and **views** (standard or materialized)

4. These objects are part of one or more schemas

5. You can store any **structured** relational data (standard SQL datatype) or any **semi-structured** relational data (JSON, Parquet, Avro, ORC XML) ( Variant datatypes)

6. Snowflake uses highly secure cloud storage to maintain your structured and semi-structured data

7. As data is loaded into the table, following activities happen
   - Snowflake converts them into optimized columnar compressed format (proprietary to snowflake)

   - This optimized columnar compressed format brings a lot of data access efficiently (faster workload, low compute and storage cost)

   - And encrypt it AES 256 Strong encryption

   - Based on the cloud platform, data is loaded to the cloud storage layer (S3/Azure Blob/GCP Bucket), however, this is not visible to the user how it is stored and retrieved and overhead is taken care of by the snowflake.

   - These compressed and secure data is **accessible only via SQL** and there are no other means that it is accessible.

   - Data storage cost is calculated on the **daily average amount of data (in bytes)** (Short-lived or long-lived tables)

   - If the time travel feature is enabled, it is also part of the data storage cost.

&nbsp;

&nbsp;
