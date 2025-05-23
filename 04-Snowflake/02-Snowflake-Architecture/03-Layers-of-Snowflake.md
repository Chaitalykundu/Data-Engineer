# Overview

- [Overview](#overview)
- [Note](#note)
- [Layers](#layers)
- [Database Storage layer or Data layer](#database-storage-layer-or-data-layer)
- [Compute or Query Processing or Virtual Warehouse layer](#compute-or-query-processing-or-virtual-warehouse-layer)
- [Services or Cloud Services layer](#services-or-cloud-services-layer)

&nbsp;

Read : <https://hevodata.com/blog/snowflake-architecture-cloud-data-warehouse/#Components_of_Data_Warehouse_Architecture>

&nbsp;

&nbsp;

&nbsp;

# Note

- Each database belongs to a single Snowflake account

- Each schema belongs to a single database.

Snowflake account > Database > Schema > Table / view

&nbsp;

&nbsp;

# Layers

Snowflake’s unique architecture consists of **three** key layers:

1. **Database Storage layer or Data layer**

2. **Compute layer or Query Processing layer or Virtual Warehouse layer**

3. **Services layer or Cloud Services layer** (Brain of snowflake)

Each layer can scale independently.

&nbsp;

<img src=../assets/Snowflake-Architecture.png height="250px">

&nbsp;

&nbsp;

# Database Storage layer or Data layer

The Database Storage Layer is responsible for persistently **storing all data** (structured or semi-structured) in an **optimized, compressed, and columnar format.**

&nbsp;

&nbsp;

# Compute or Query Processing or Virtual Warehouse layer

The Compute Layer in Snowflake is responsible for **query execution** and is implemented through Virtual Warehouses.

&nbsp;

&nbsp;

# Services or Cloud Services layer

The Cloud Services Layer in Snowflake **coordinates and manages all user interactions and system operations**.
