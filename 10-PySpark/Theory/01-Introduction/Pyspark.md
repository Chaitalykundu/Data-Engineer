# Content

- [Content](#content)
- [What is PySpark](#what-is-pyspark)
- [How it fits into a data-engineering pipeline:](#how-it-fits-into-a-data-engineering-pipeline)

&nbsp;

&nbsp;

&nbsp;

# What is PySpark

PySpark is the Python API for Apache Spark.

It allows you to write Spark applications using Python.

&nbsp;

| Technology   | Purpose                                         |
| ------------ | ----------------------------------------------- |
| Python       | General-purpose programming language            |
| Apache Spark | Distributed data-processing engine              |
| PySpark      | Python API for Apache Spark                     |
| SQL          | Query language for structured data              |
| Snowflake    | Cloud data warehouse                            |
| dbt          | SQL-based transformation and modeling framework |

&nbsp;

&nbsp;

# How it fits into a data-engineering pipeline:

```
                +--------------------------+
                |       Data Sources       |
                | CSV • JSON • APIs • DBs  |
                | AWS S3                   |
                +------------+-------------+
                             |
                             v
                +--------------------------+
                |      Data Ingestion      |
                | AWS Glue • Kafka         |
                | Python • Connectors      |
                +------------+-------------+
                             |
                             v
                +--------------------------+
                |    PySpark Processing    |
                | Read • Clean • Validate  |
                | Transform • Aggregate    |
                +------------+-------------+
                             |
                             v
                +--------------------------+
                |      Data Storage        |
                | Parquet • Delta Lake     |
                | AWS S3 • Data Lake       |
                +------------+-------------+
                             |
                             v
                +--------------------------+
                |     Data Warehouse       |
                | Snowflake • Redshift     |
                +------------+-------------+
                             |
                             v
                +--------------------------+
                |   Data Transformation    |
                | dbt • SQL                |
                +------------+-------------+
                             |
                             v
                +--------------------------+
                |  Analytics and Reporting |
                | Power BI • Tableau • BI  |
                +--------------------------+
```

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

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
