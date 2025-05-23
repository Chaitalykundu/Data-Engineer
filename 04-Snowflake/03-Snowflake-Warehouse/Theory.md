# Overview

- [Overview](#overview)
- [Warehouse](#warehouse)
- [Key Concepts](#key-concepts)

&nbsp;

&nbsp;

&nbsp;

# Warehouse

Snowflake Warehouse is a core component of the Snowflake architecture.

A Snowflake warehouse is a **virtual compute cluster** that performs data processing tasks such as:

- Running queries
- Loading/unloading data
- Transformations
- DDL/DML operations

In Snowflake, compute (warehouse) is decoupled from storage. That means you can scale compute independently of your data.

&nbsp;

&nbsp;

# Key Concepts

| Term                    | Description                                                                       |
| ----------------------- | --------------------------------------------------------------------------------- |
| **Virtual Warehouse**   | A compute resource used for executing queries and other operations.               |
| **Size**                | Determines the number of servers. Larger sizes = more compute = faster execution. |
| **Scaling Policy**      | Auto-scale or manual resize depending on your workload.                           |
| **Auto-suspend**        | Automatically suspends the warehouse when idle to save costs.                     |
| **Auto-resume**         | Automatically resumes when a query is executed.                                   |
| **Concurrency Scaling** | Enables short-lived warehouses to handle bursty concurrent workloads.             |

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

&nbsp;

&nbsp;

&nbsp;
