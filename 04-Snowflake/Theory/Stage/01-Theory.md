# Overview

- [Overview](#overview)
- [Stage](#stage)
- [Types of Stages in Snowflake](#types-of-stages-in-snowflake)
  - [Internal Stage](#internal-stage)
    - [Types of Internal Stage](#types-of-internal-stage)
  - [External Stage](#external-stage)
    - [Create Stage in S3](#create-stage-in-s3)
    - [View Stage Contents](#view-stage-contents)
- [Best Practices](#best-practices)

&nbsp;

&nbsp;

&nbsp;

# Stage

A Stage is a location where data files are stored (temporarily or permanently) so that the data in the files can be loaded into a table or unloaded from database tables.

Stages are mainly used with the `COPY INTO` command for loading data into Snowflake tables and unloading data from Snowflake tables to files.

&nbsp;

While extracting data from any source (e.g. local, s3 etc) to snowflake, it is stored in stage.

Stages are basically the doorstep of snowflake

&nbsp;

&nbsp;

# Types of Stages in Snowflake

| Type               | Description                                             |
| ------------------ | ------------------------------------------------------- |
| **Internal Stage** | Stored within Snowflake’s own cloud storage             |
| **External Stage** | References external cloud storage (S3, Azure Blob, GCS) |

&nbsp;

&nbsp;

## Internal Stage

Internal Stages allow you to bring data from local .

&nbsp;

&nbsp;

### Types of Internal Stage

| Internal Stage Type | Description                             |
| ------------------- | --------------------------------------- |
| **Table Stage**     | Automatically available for every table |
| **User Stage**      | Automatically available for every user  |
| **Named Stage**     | Created explicitly using `CREATE STAGE` |

&nbsp;

&nbsp;

## External Stage

It is used to reference external cloud storage (like Amazon S3, Azure Blob, or Google Cloud Storage).

It connects directly to some storage in one of the major cloud providers (s3, azure, gcp)

The default file format of data is **CSV**.

&nbsp;

### Create Stage in S3

```sql
CREATE or REPLACE STAGE stage_name
  URL='s3://my-bucket-name/data/';
```

&nbsp;

### View Stage Contents

```sql
LIST @stage_name;
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Best Practices

- Use Named Stages for reusable pipelines.
- Use Table Stages for table-specific load/unload.
- Prefer External Stages for large datasets or cross-cloud workflows.
- Secure External Stages using IAM roles and Storage Integrations.

&nbsp;

&nbsp;
