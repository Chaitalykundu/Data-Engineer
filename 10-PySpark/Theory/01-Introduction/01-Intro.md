# Content

- [Content](#content)
- [What is Apache Spark](#what-is-apache-spark)
- [Distributed Data Processing Engine](#distributed-data-processing-engine)
- [Data Processing](#data-processing)
  - [What are the different types of data processing](#what-are-the-different-types-of-data-processing)
    - [Batch Processing](#batch-processing)
    - [2. Real-Time Processing](#2-real-time-processing)
    - [3. Micro-Batch Processing](#3-micro-batch-processing)
  - [What happens during data processing](#what-happens-during-data-processing)
  - [Which tools are used for data processing](#which-tools-are-used-for-data-processing)
- [Data Ingestion vs Data Processing](#data-ingestion-vs-data-processing)
- [Terminology](#terminology)

&nbsp;

&nbsp;

&nbsp;

# What is Apache Spark

Apache Spark is an open-source distributed data-processing engine used to process large volumes of data efficiently.

&nbsp;

# Distributed Data Processing Engine

A Distributed Data Processing Engine is a software system that processes large volumes of data by distributing the workload across multiple computers (machines) instead of processing everything on a single computer.

Instead of one computer doing all the work, multiple computers work together to process data faster and more efficiently.

&nbsp;

&nbsp;

# Data Processing

Data Processing is the process of collecting raw data, cleaning it, transforming it, organizing it, and converting it into meaningful information that can be used for analysis or business decisions.

Data Processing = Converting raw data into useful data.

&nbsp;

&nbsp;

## What are the different types of data processing

1. Batch Processing
2. Real-Time Processing
3. Micro-Batch Processing

&nbsp;

### Batch Processing

Data is collected over a period and processed together at scheduled intervals.

Example: Processing yesterday's transactions every morning at 2 AM.

Tools: Apache Spark, AWS Glue.

&nbsp;

### 2. Real-Time Processing

Data is processed continuously as soon as it arrives.

Example: Detecting fraudulent credit card transactions immediately.

Tools: Apache Flink, Apache Kafka, Spark Structured Streaming.

&nbsp;

### 3. Micro-Batch Processing

Data is collected in very small batches and processed frequently.

Example: Processing website clicks every 10 seconds.

| Type                   | Description                                                                    | Example                                                    | Tools                                                  |
| ---------------------- | ------------------------------------------------------------------------------ | ---------------------------------------------------------- | ------------------------------------------------------ |
| Batch Processing       | Data is collected over a period and processed together at scheduled intervals. | Processing yesterday's transactions every morning at 2 AM. | Apache Spark, AWS Glue                                 |
| Real-Time Processing   | Data is processed continuously as soon as it arrives.                          | Detecting fraudulent credit card transactions immediately. | Apache Flink, Apache Kafka, Spark Structured Streaming |
| Micro-Batch Processing | Data is collected in small batches and processed frequently.                   | Processing website clicks every 10 seconds.                | Apache Spark Structured Streaming                      |

&nbsp;

&nbsp;

## What happens during data processing

As a Data Engineer, you will commonly perform these operations:

| Operation           | Purpose               | Example                 |
| ------------------- | --------------------- | ----------------------- |
| Data Collection     | Collect raw data      | API, database, files    |
| Data Cleaning       | Remove incorrect data | Remove duplicates       |
| Data Transformation | Change data format    | Convert string to date  |
| Data Validation     | Check data quality    | Check NULL values       |
| Data Aggregation    | Summarize data        | Calculate total sales   |
| Data Storage        | Store processed data  | Snowflake, Redshift, S3 |

&nbsp;

&nbsp;

## Which tools are used for data processing

| Tool         | Purpose                                        |
| ------------ | ---------------------------------------------- |
| Python       | Data manipulation and processing               |
| SQL          | Querying and transforming data                 |
| PySpark      | Distributed data processing using Python       |
| Apache Spark | Large-scale distributed data processing engine |
| AWS Glue     | Managed ETL/data integration service           |
| Apache Flink | Real-time stream processing                    |
| dbt          | SQL-based data transformation                  |
| Snowflake    | Data storage and SQL processing                |

&nbsp;

&nbsp;

# Data Ingestion vs Data Processing

| Data Ingestion                         | Data Processing                          |
| -------------------------------------- | ---------------------------------------- |
| Collects data from sources.            | Converts raw data into useful data.      |
| Moves data from one system to another. | Cleans and transforms data.              |
| Example: API → S3                      | Example: Remove duplicates using PySpark |

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
