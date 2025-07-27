# Overview

- [Overview](#overview)
- [Flow of data](#flow-of-data)
- [Flow Explanation (Short \& Simple)](#flow-explanation-short--simple)
- [In One Line](#in-one-line)
- [ELT process](#elt-process)
- [Data Ingestion](#data-ingestion)
  - [Two Main Types of Data Ingestion:](#two-main-types-of-data-ingestion)
  - [Tools Used for Data Ingestion:](#tools-used-for-data-ingestion)
  - [Common Data Sources:](#common-data-sources)
  - [Ingestion → Storage → Transformation → Analytics](#ingestion--storage--transformation--analytics)
  - [Goals of Data Ingestion](#goals-of-data-ingestion)

&nbsp;

&nbsp;

&nbsp;

# Flow of data

<img src="../../assets/flow-of-data.png" height="300px" alt="assets-flow-of-data">

&nbsp;

&nbsp;

This diagram shows a modern data pipeline workflow using Amazon S3 → Snowflake → dbt → Power BI.

&nbsp;

# Flow Explanation (Short & Simple)

1. Amazon S3:

   Raw data is stored in S3 buckets.

   - Example paths:
     - s3://snowflake-workshop-lab/weather-nyc
     - s3://snowflake-workshop-lab/citibike-trips

2. Snowflake:

   Data is ingested from S3 into Snowflake for processing and storage.

3. dbt (Data Build Tool):

   dbt connects to Snowflake and applies SQL-based transformations — like cleaning, joining, filtering — to raw data.

4. Power BI:

   Transformed data from Snowflake is finally visualized in Power BI dashboards and reports for analysis.

&nbsp;

&nbsp;

# In One Line

Raw data from S3 → loaded into Snowflake → transformed using dbt → visualized in Power BI.

&nbsp;

&nbsp;

# ELT process

| **ELT Step**     | **Tool/Process Used**                       | **What Happens**                                            |
| ---------------- | ------------------------------------------- | ----------------------------------------------------------- |
| ✅ **Extract**   | **Amazon S3** → Snowflake (via `COPY INTO`) | Raw data is extracted from S3 buckets (CSV, Parquet, etc.). |
| ✅ **Load**      | **Snowflake**                               | Data is loaded into raw/staging tables inside Snowflake.    |
| ✅ **Transform** | **dbt (on Snowflake)**                      | SQL models apply cleaning, joins, business logic, etc.      |

&nbsp;

&nbsp;

# Data Ingestion

Data ingestion is like taking data from multiple places (e.g., apps, APIs, databases, files) and putting it all in one central place so it can be analyzed later

&nbsp;

Data Ingestion is the first step in a modern data pipeline. It refers to the process of collecting and importing data from various sources into a storage or processing system—typically a data warehouse, data lake, or data lakehouse.

&nbsp;

&nbsp;

## Two Main Types of Data Ingestion:

| Type                    | Description                                                 | Examples                            |
| ----------------------- | ----------------------------------------------------------- | ----------------------------------- |
| **Batch Ingestion**     | Collects data in scheduled intervals (e.g., hourly, daily). | Daily sales report, nightly sync    |
| **Streaming Ingestion** | Continuously ingests data in real-time or near real-time.   | Live sensor feeds, transaction logs |

&nbsp;

&nbsp;

## Tools Used for Data Ingestion:

| Tool               | Type                | Purpose                                   |
| ------------------ | ------------------- | ----------------------------------------- |
| **Fivetran**       | Batch / Incremental | Fully managed connectors for 100+ sources |
| **Airbyte**        | Batch / Incremental | Open-source EL tool                       |
| **Apache Kafka**   | Streaming           | Real-time messaging and ingestion         |
| **Apache NiFi**    | Batch / Streaming   | Data routing and processing               |
| **AWS Glue**       | Batch               | Serverless data ingestion & ETL           |
| **Informatica**    | Batch / Streaming   | Enterprise ingestion + ETL                |
| **Custom scripts** | Any                 | Python, Java, etc. for tailored ingestion |

&nbsp;

&nbsp;

## Common Data Sources:

- SQL / NoSQL Databases (e.g., PostgreSQL, MongoDB)
- REST APIs
- CSV/Excel files
- IoT Sensors
- Cloud apps (e.g., Salesforce, HubSpot)
- Streaming platforms (e.g., Kafka, Kinesis)

&nbsp;

&nbsp;

## Ingestion → Storage → Transformation → Analytics

```SCSS
Sources → [🟢 Data Ingestion] → 🏢 Data Warehouse → 🧱 Transform (e.g., dbt) → 📊 BI Tools
```

&nbsp;

&nbsp;

## Goals of Data Ingestion

- Consolidate data from multiple sources
- Ensure scalability and reliability
- Handle different formats and volumes
- Minimize latency (esp. for real-time use cases)

&nbsp;
