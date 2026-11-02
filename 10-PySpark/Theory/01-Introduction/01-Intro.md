# Content

- [Content](#content)
- [What is Apache Spark](#what-is-apache-spark)
- [Distributed Data Processing Engine](#distributed-data-processing-engine)
- [Terminology](#terminology)

&nbsp;

&nbsp;

&nbsp;

# What is Apache Spark

Apache Spark is an open-source distributed data-processing engine used to process large volumes of data efficiently.

&nbsp;

&nbsp;

Imagine you have a 500 GB dataset.

- Processing it using a normal Python script on one machine may be slow or run out of memory.
- Spark can divide the work into smaller tasks and process them across multiple CPU cores or machines.

Example: Suppose you have customer transaction data containing 100 million records. You need to filter transactions, calculate total sales by customer and write the result to Parquet.

Spark can distribute this processing instead of relying on one Python process.

&nbsp;

&nbsp;

# Distributed Data Processing Engine

A Distributed Data Processing Engine is a software system that processes large volumes of data by distributing the workload across multiple computers (machines) instead of processing everything on a single computer.

Instead of one computer doing all the work, multiple computers work together to process data faster and more efficiently.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Terminology

Remember this distinction:

- **_Data Ingestion_** = Bringing data into your platform.
- **_Data Processing_** = Working on the data.
- **_Data Storage_** = Storing the data.
- **_Data Analytics_** = Using the data to generate insights.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
