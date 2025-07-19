# Overview

- [Overview](#overview)
- [Why Snowflake](#why-snowflake)
- [On-premise Meaning](#on-premise-meaning)
- [Workload isolation](#workload-isolation)
- [Access control](#access-control)
- [Enterprise data warehouse vs data marts](#enterprise-data-warehouse-vs-data-marts)
- [Scale Up (Vertical Scaling)](#scale-up-vertical-scaling)
- [Scale Out (Horizontal Scaling)](#scale-out-horizontal-scaling)

&nbsp;

&nbsp;

&nbsp;

# Why Snowflake

- Simple, reliable data pipelines in multi languages like **Java, Python, PHP, Spark, Ruby** etc.

- Snowflake is relatively new and fresh in cloud data warehouse space

- It is purposely built only for cloud platform (AWS, Azure, GCP,)

- It is a cloud platform. So no infrastructure costs

- Snowflake is more than a data warehouse

- Data recovery, backup , sharing, masking.

- High Scalability (scale up and scale out)

- Easy integration with data visualization / Reporting tools.

- Brings many unique features beside workload isolation like -
  - Time Travel feature
  - Data Sharing feature
  - Data Cloning feature (Zero copy clone)
  - Readers account (for non snowflake users)
  - Out of box security (RBAC / DAC) / Encryption / Column level masking / Row level security
  - All popular connector (JDBC / ODBC / Spark and many more)
  - Pay per second billing model (not upfront investment and only pay for actual usage)

&nbsp;

&nbsp;

# On-premise Meaning

"On-premise" refers to a deployment and licensing model for software that is installed and runs on a company's own computers, rather than at a remote facility. The term is also abbreviated as "on-prem".
On-premise software can be hosted on the company's own hardware, either in their own premises or by renting space in a data center. The company can choose to manage and maintain the servers themselves, or they can hire an external IT provider to do so.

&nbsp;

&nbsp;

# Workload isolation

Workload isolation means resources are reserved, exclusively, for a workload group.

Workload Isolation enables you to create and manage isolated environments to contain newly created or migrated workloads.

&nbsp;

&nbsp;

# Access control

Access Control Models allow organizations to grant user permissions and enforce access policies.

There are four types of access control methods: - Mandatory Access Control (MAC), - Role-Based Access Control (RBAC), - Discretionary Access Control (DAC), - Rule-Based Access Control (RBAC or RB-RBAC).

A method is chosen based on the level of access needed by each user, security requirement, infrastructure, etc.

&nbsp;

&nbsp;

# Enterprise data warehouse vs data marts

An enterprise data warehouse stores data from all of an organization's business operations in a single, centralized platform.

On the other hand, data marts are smaller warehousing systems that contain subsets of data for particular departments, business units or groups of users.

&nbsp;

&nbsp;

&nbsp;

# Scale Up (Vertical Scaling)

- **_Means_**: Increasing the size of a virtual warehouse (e.g., from X-Small to Medium or Large, max 6XL).

- **_Effect_**: Adds more compute power (CPU, memory) to a single instance.

- **_Use case_**: Helpful when queries are CPU or memory intensive and you want them to complete faster.

- **_Example_**: Moving from a Small (S) to a Large (L) warehouse increases the compute resources 4x.

&nbsp;

&nbsp;

# Scale Out (Horizontal Scaling)

- **_Means_**: Increasing the number of clusters (virtual warehouses) in a multi-cluster warehouse.

- **_Effect_**: Adds more parallel compute instances to handle concurrent queries.

- **_Use case_**: Best when dealing with many concurrent users or queries, like in dashboards or BI tools.

- **_Example_**: A multi-cluster warehouse can automatically start additional clusters when needed, based on load.
