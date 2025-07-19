# Overview

- [Overview](#overview)
- [Snowflake Data Warehouse Architecture](#snowflake-data-warehouse-architecture)
- [Benefits of Multi-Clustered Shared Data Architecture](#benefits-of-multi-clustered-shared-data-architecture)
- [Snowflake’s architecture as hybrid](#snowflakes-architecture-as-hybrid)
- [Hybrid Approach](#hybrid-approach)

&nbsp;

&nbsp;

&nbsp;

# Snowflake Data Warehouse Architecture

Snowflake follows **Multi-Clustered Shared Data Architecture** combines the benefits of both **Shared Disk Architecture** and **Shared Nothing Architecture**

Snowflake's unique **multi-layered** architecture allows for **performance, scalability, elasticity**, and **concurrency**.

Each of Snowflake's layers is physically separated but logically integrated giving you the speed and support you need for every workload.

&nbsp;

&nbsp;

# Benefits of Multi-Clustered Shared Data Architecture

- Data Sharing
- Failover Capabilities
- Scalability
- Performance

&nbsp;

&nbsp;

# Snowflake’s architecture as hybrid

Snowflake’s architecture is a hybrid of traditional **shared-disk** and **shared-nothing** database architectures.

Similar to shared-disk architectures, Snowflake uses a **central data repository** for persisted data that is accessible from all compute nodes in the platform.

But similar to shared-nothing architectures, Snowflake **processes queries using MPP(massively parallel processing) compute clusters** where each node in the cluster stores a portion of the entire data set locally.

This approach offers the data management simplicity of a shared-disk architecture, but with the performance and scale-out benefits of a shared-nothing architecture.

&nbsp;

&nbsp;

# Hybrid Approach

- Decoupled compute and storage
- Scale up independently
- Multi clustered shared data architecture
- Full advantage of cloud native features (Elasticity)
