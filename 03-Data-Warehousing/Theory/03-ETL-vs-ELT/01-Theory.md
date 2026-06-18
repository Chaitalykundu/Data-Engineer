# Content

- [Content](#content)
- [ETL \& ELT](#etl--elt)
- [ETL (Extract → Transform → Load)](#etl-extract--transform--load)
  - [Flow](#flow)
  - [Key idea](#key-idea)
  - [Tools](#tools)
  - [Strengths](#strengths)
  - [Weaknesses (important)](#weaknesses-important)
- [ELT (Extract → Load → Transform)](#elt-extract--load--transform)
  - [Flow](#flow-1)
  - [Key idea](#key-idea-1)
  - [Tools](#tools-1)
  - [Strengths](#strengths-1)
  - [Weaknesses](#weaknesses)
- [Pipeline vs Workflow](#pipeline-vs-workflow)
  - [Pipeline](#pipeline)
  - [Workflow](#workflow)

&nbsp;

&nbsp;

&nbsp;

# ETL & ELT

ETL and ELT are both data integration patterns, but the difference is where transformation happens and how modern systems are designed around it.

&nbsp;

&nbsp;

# ETL (Extract → Transform → Load)

Data is:

1. Extracted from source systems (CRM, ERP, APIs)
2. Transformed before loading
3. Loaded into the data warehouse

&nbsp;

&nbsp;

## Flow

Source → ETL Tool → Transform Layer → Data Warehouse

```
+-------------------+
| Source Systems    |
+-------------------+
| CRM               |
| ERP               |
| Website           |
| APIs              |
+---------+---------+
          |
          | Extract
          v
+-------------------+
| ETL Tool          |
+-------------------+
| Informatica       |
| Talend            |
| SSIS              |
| Python            |
+---------+---------+
          |
          | Transform
          | (Clean, Join,
          | Aggregate)
          v
+-------------------+
| Processed Data    |
+---------+---------+
          |
          | Load
          v
+-------------------+
| Data Warehouse    |
+-------------------+
```

&nbsp;

&nbsp;

## Key idea

You clean and structure data before it enters the warehouse.

&nbsp;

&nbsp;

## Tools

- Informatica
- Talend
- SSIS
- Apache NiFi
- Python scripts (custom ETL)

&nbsp;

&nbsp;

## Strengths

- Data is clean and structured before storage
- Good for legacy systems and strict governance
- Lower risk of storing raw/dirty data

&nbsp;

&nbsp;

## Weaknesses (important)

- Transformations take longer. Slower for large data volumes
- Less flexible (changes require reprocessing pipeline)
- Scaling transformations is harder and expensive
- You lose access to raw data once transformed.

&nbsp;

&nbsp;

&nbsp;

# ELT (Extract → Load → Transform)

Data is:

Extracted from sources
Loaded directly into the data warehouse
Transformed inside the warehouse

&nbsp;

&nbsp;

## Flow

Source → Load Raw Data → Warehouse → Transform (SQL/dbt)

```
+-------------------+
| Source Systems    |
+-------------------+
| CRM               |
| ERP               |
| APIs              |
| Website           |
+---------+---------+
          |
          | Extract
          v
+-------------------+
| EL Tool           |
+-------------------+
| Airbyte           |
| Fivetran          |
| Stitch            |
+---------+---------+
          |
          | Load Raw Data
          v
+----------------------------------+
| Cloud Data Warehouse             |
+----------------------------------+
| Snowflake                        |
| BigQuery                         |
| Redshift                         |
+---------------+------------------+
                |
                | Transform
                v
+----------------------------------+
| dbt / SQL Models                 |
+----------------------------------+
| Staging Layer                    |
| Intermediate Layer               |
| Mart Layer                       |
+----------------------------------+
```

&nbsp;

&nbsp;

## Key idea

You store raw data first, then use warehouse power to transform it.

&nbsp;

&nbsp;

## Tools

- Snowflake
- BigQuery
- Redshift
- dbt
- Fivetran, Airbyte

&nbsp;

&nbsp;

## Strengths

- Highly scalable (uses warehouse compute)
- Faster ingestion (no waiting for transformation)
- Very flexible (re-transform anytime)
- Best for modern cloud data stacks

&nbsp;

&nbsp;

## Weaknesses

- Requires strong governance (raw data clutter risk)
- Storage cost can increase
- Needs good modeling discipline (e.g., dbt layers)

&nbsp;

&nbsp;

# Pipeline vs Workflow

## Pipeline

The complete movement of data from source to destination.

```
Source → Extract → Load → Transform → Reporting
```

&nbsp;

## Workflow

The sequence of tasks within a pipeline.

```
Task 1 → Task 2 → Task 3 → Task 4
```

&nbsp;

Think of it as:

```
Pipeline = Entire Road
Workflow = Individual Stops on the Road
```

&nbsp;
