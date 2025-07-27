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
