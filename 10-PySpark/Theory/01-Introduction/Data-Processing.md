# Content

- [Content](#content)
- [Data Processing](#data-processing)
  - [What are the different types of data processing](#what-are-the-different-types-of-data-processing)
    - [Batch Processing](#batch-processing)
    - [2. Real-Time Processing](#2-real-time-processing)
    - [3. Micro-Batch Processing](#3-micro-batch-processing)
  - [What happens during data processing](#what-happens-during-data-processing)
  - [Which tools are used for data processing](#which-tools-are-used-for-data-processing)
- [Data Ingestion vs Data Processing](#data-ingestion-vs-data-processing)

&nbsp;

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
