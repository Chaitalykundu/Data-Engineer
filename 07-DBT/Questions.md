# Overview

- [Overview](#overview)
- [Questions](#questions)
  - [Introduction](#introduction)
    - [Theory](#theory)
    - [Data Flow](#data-flow)
  - [DBT Models](#dbt-models)
- [Answers](#answers)
  - [Introduction](#introduction-1)
    - [Theory](#theory-1)
      - [1. What is DBT](#1-what-is-dbt)
      - [2. What is Data Ingestion](#2-what-is-data-ingestion)
      - [7. if a file contains multiple types of data i.e txt, images, videos then is it possible to do transformation via dbt](#7-if-a-file-contains-multiple-types-of-data-ie-txt-images-videos-then-is-it-possible-to-do-transformation-via-dbt)
  - [DBT Models](#dbt-models-1)
    - [2. What happen when you run dbt model](#2-what-happen-when-you-run-dbt-model)
    - [3. Which Objects Can dbt Models Create](#3-which-objects-can-dbt-models-create)

&nbsp;

&nbsp;

&nbsp;

# Questions

## Introduction

### Theory

1. What is DBT
2. Why do we use **DBT** / What are the features of dbt
3. Explain the Data Flow of Modern Data Stack
4. Where does dbt fits in the Modern Data Stack
5. What does dbt do / What are the use of dbt
6. How does dbt work
7. if a file contains multiple types of data i.e txt, images, videos then is it possible to do transformation via dbt

&nbsp;

&nbsp;

### Data Flow

1. What is Data Ingestion

&nbsp;

&nbsp;

## DBT Models

1. What is dbt model
2. What happen when you run dbt model
3. Which Objects Can dbt Models Create
4. What are the things can dbt handle
5. What i Model Materialization

&nbsp;

&nbsp;

&nbsp;

# Answers

## Introduction

### Theory

#### 1. What is DBT

&nbsp;

&nbsp;

#### 2. What is Data Ingestion

Data Ingestion is the first step in a modern data pipeline. It refers to the process of collecting and importing data from various sources into a storage or processing system—typically a data warehouse, data lake, or data lakehouse.

&nbsp;

&nbsp;

&nbsp;

#### 7. if a file contains multiple types of data i.e txt, images, videos then is it possible to do transformation via dbt

Not directly. dbt is not a general-purpose tool for transforming arbitrary files such as images, videos, and raw text. Its strength is SQL-based transformation of structured or semi-structured data already accessible in your data warehouse.

Suppose your S3 bucket contains customers.txt, transactions.json, employee_photo.jpg, training_video.mp4, You wouldn't ask dbt to process the whole bucket. Instead

```
                    AWS S3
                      │
          ┌───────────┼────────────┐
          ↓           ↓            ↓
        TXT         JSON       Images/Video
          │           │            │
          ↓           ↓            ↓
     ingestion     ingestion    Python/ML/
          │           │          specialized
          └───────────┼────────────┘
                      ↓
                  Snowflake
                      │
                      ↓
                     dbt
                      │
          ┌───────────┼───────────┐
          ↓           ↓           ↓
       STAGING     CURATED     SEMANTIC
```

| Data type | Can dbt transform it directly? | Typical approach                 |
| --------- | ------------------------------ | -------------------------------- |
| CSV       | ✅ Yes                          | Load into Snowflake → dbt        |
| JSON      | ✅ Yes                          | Load → parse with SQL/dbt        |
| Parquet   | ✅ Yes                          | Load/query → dbt                 |
| XML       | ⚠️ Partially                   | Parse after ingestion            |
| TXT       | ⚠️ Depends                     | Convert/parse first              |
| Images    | ❌ No                           | Python/ML/image processing first |
| Videos    | ❌ No                           | Video processing first           |
| PDFs      | ❌ Not directly                 | Extract text/metadata first      |


In Short **_dbt is primarily a SQL-based transformation framework, so it doesn't directly process binary data such as images or videos. I would use an ingestion or processing layer such as Python, Spark, or specialized ML/media-processing tools to extract the required metadata or features and load those results into Snowflake. dbt can then perform SQL-based transformations, modeling, testing, and documentation on that structured data._**

&nbsp;

&nbsp;

&nbsp;

## DBT Models

### 2. What happen when you run dbt model

When you run `dbt run`, dbt:

- Compiles the SQL (with Jinja templating),
- dbt determines the object type from materialization
- Runs it on data warehouse, and
- Creates a **view** or **table** in the target schema based on your configuration.

&nbsp;

&nbsp;

### 3. Which Objects Can dbt Models Create

Types of Objects dbt Models Can Create (Based on Materialization)

| Materialization | What It Creates           | Notes                                                     |
| --------------- | ------------------------- | --------------------------------------------------------- |
| view (default)  | A SQL view                | Light-weight; always reflects latest data                 |
| table           | A physical table          | Heavier; faster for downstream queries                    |
| incremental     | A partially-updated table | Only adds new/updated data; efficient for large tables    |
| ephemeral       | No object                 | Used as CTE in downstream models; great for modular logic |
|                 |                           |                                                           |
