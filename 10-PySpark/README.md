# Content

- [Content](#content)
- [Day-wise learning roadmap](#day-wise-learning-roadmap)
  - [Day 1 – PySpark fundamentals](#day-1--pyspark-fundamentals)
    - [Learn:](#learn)
    - [Hands-on:](#hands-on)
  - [Day 2 – DataFrame transformations](#day-2--dataframe-transformations)
  - [Day 3 – Data cleaning](#day-3--data-cleaning)
    - [Learn:](#learn-1)
  - [Day 4 – Joins, aggregations and window functions](#day-4--joins-aggregations-and-window-functions)
    - [Learn:](#learn-2)
  - [Day 5 – File processing and ETL](#day-5--file-processing-and-etl)
    - [Learn:](#learn-3)
  - [Day 6 – Spark architecture and optimization](#day-6--spark-architecture-and-optimization)
    - [Hands-on:](#hands-on-1)
  - [Day 7 – End-to-end project](#day-7--end-to-end-project)

&nbsp;

&nbsp;

&nbsp;

# Day-wise learning roadmap

| Day   | Topics                                                                                                      | Hands-on practice                      | Expected outcome                    |
| ----- | ----------------------------------------------------------------------------------------------------------- | -------------------------------------- | ----------------------------------- |
| Day 1 | PySpark fundamentals, Spark architecture, installation, SparkSession, DataFrames                            | Create SparkSession, load CSV and JSON | Understand Spark and DataFrames     |
| Day 2 | DataFrame operations, select, filter, where, withColumn, drop, distinct, alias                              | Perform 15 transformations             | Write basic PySpark transformations |
| Day 3 | Data cleaning, null handling, duplicates, type casting, string and date functions                           | Clean a messy customer dataset         | Build data-cleaning logic           |
| Day 4 | Aggregations, groupBy, joins, union, window functions                                                       | Customer sales analysis                | Perform advanced transformations    |
| Day 5 | Read/write formats, CSV, JSON, Parquet, partitioning, schema handling                                       | Convert raw files into Parquet         | Build file-based ETL                |
| Day 6 | Spark architecture, partitions, transformations vs actions, lazy evaluation, shuffle, caching, optimization | Explain and optimize a Spark job       | Understand performance tuning       |
| Day 7 | End-to-end project, debugging, interview preparation                                                        | Build a complete ETL pipeline          | Demonstrate project-level skills    |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

## Day 1 – PySpark fundamentals

### Learn:

- What is Apache Spark?
- What is PySpark?
- Spark architecture: Driver, Executors, Cluster Manager.
- SparkSession and SparkContext.
- RDD vs DataFrame vs Dataset.
- Local Spark setup

&nbsp;

### Hands-on:

1. Install Python and Java.
2. Install PySpark.
3. Create a SparkSession.
4. Create a DataFrame manually.
5. Read CSV and JSON files.
6. Use show(), printSchema() and count().

&nbsp;

&nbsp;

## Day 2 – DataFrame transformations

Learn these important operations:

| Operation      | Purpose                                                       |
| -------------- | ------------------------------------------------------------- |
| `select()`     | Select specific columns                                       |
| `filter()`     | Filter records based on conditions                            |
| `where()`      | Apply filtering conditions                                    |
| `withColumn()` | Create or modify columns                                      |
| `drop()`       | Remove columns                                                |
| `distinct()`   | Remove duplicate rows                                         |
| `orderBy()`    | Sort records                                                  |
| `limit()`      | Restrict the number of output records                         |
| `alias()`      | Assign an alternative name to a DataFrame or column reference |

Practice: Write 15 queries using employee and department datasets.

&nbsp;

&nbsp;

## Day 3 – Data cleaning

### Learn:

- Handling NULL values.
- dropna() and fillna().
- Removing duplicates.
- Type casting.
- String manipulation.
- Date transformations.
- Conditional logic using when() and otherwise().

Practice: Clean a dataset containing missing values, duplicates and inconsistent data types.

&nbsp;

&nbsp;

## Day 4 – Joins, aggregations and window functions

This is particularly important because your SQL experience will help you here.

### Learn:

- Inner, left, right and full joins.
- groupBy() and agg().
- Sum, average, count, min and max.
- Window functions.
- row_number(), rank() and dense_rank().
- partitionBy() and orderBy() inside windows.

Practice: Find the highest-paid employee in each department.

&nbsp;

&nbsp;

## Day 5 – File processing and ETL

### Learn:

- Reading CSV, JSON and Parquet.
- Writing DataFrames.
- Schema inference vs explicit schema.
- Append vs overwrite.
- Partitioned data.
- Basic handling of corrupt records.

Practice: Read raw CSV, clean it, transform it and save the output as Parquet.

&nbsp;

&nbsp;

## Day 6 – Spark architecture and optimization

### Hands-on:

- Compare repartition() and coalesce().
- Inspect explain().
- Identify a shuffle operation.
- Try caching a repeatedly used DataFrame.
- Understand broadcast joins.

&nbsp;

&nbsp;

## Day 7 – End-to-end project

Build a project that you can explain during Data Engineer interviews.

&nbsp;

&nbsp;
