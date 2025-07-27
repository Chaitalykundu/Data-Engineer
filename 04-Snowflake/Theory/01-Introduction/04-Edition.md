# Overview

- [Overview](#overview)
- [Snowflake Editions](#snowflake-editions)
- [Key Points](#key-points)
- [Regions](#regions)
- [Cloud Providers](#cloud-providers)

&nbsp;

&nbsp;

&nbsp;

# Snowflake Editions

Snowflake editions are

- Standard
- Enterprise
- Business Critical (Enterprise for Sensitive Data (ESD))
- VPS (Virtual Private Snowflake)

&nbsp;

&nbsp;

Snowflake provides two types of storage.

1. On-demand
2. Capacity

<u>**On Demand**</u>: Usage-based pricing with no long-term licensing requirements.

<u>**Capacity**</u>: Discounted pricing based on an upfront Capacity commitment.

&nbsp;

&nbsp;

# Key Points

- Snowflake comes with a **30 days free trial** edition and allows you to choose a cloud provider (AWS, Azure, GCP)

- Free trial edition is loaded with **400$ credit**. If the credit is exhausted, credit card details is required.

- Except VPS, all other editions (**Standard, Enterprise, Business Critical**) are available for self registration and all features are available in free trial edition

- Snowflake credit **cost depends on** the Snowflake **edition**, not on cloud provider or region

- Some features are **not available in standard edition**, available only in Enterprise edition
  - Extended (90 days) time travel
  - Multi-cluster virtual warehouse
  - Security compliance
  - Materialized view
  - Search Optimization
  - Column & Row level security
  - Database failover and fallback (applicable for Business critical & VPS)

- Snowflake standard edition does not get **24 hours** early access to new **weekly** release

- VPS offers height security for organization and include all features as Business Critical editions. But completely separate snowflake environment.

- VPS is designed for financial institutes or for such highest security use cases.

- Each snowflake is hosted in a single region. If you want to use snowflake for multiple regions, you must maintain a snowflake account for each of the desired account.

- Each snowflake account is different and independent from the other account

- Besides compute and storage, snowflake also charges for Cloud Services and Data Transfer cost if applicable (Data loading from external datalake from other cloud provider)

- MFA (Multi-factor Authentication) is enabled even for trial edition user and it has to be activated for individual user.

&nbsp;

&nbsp;

# Regions

Snowflake supports multi regions across all of the snowflake supported cloud platforms, grouped into **three** global geographic segments

- North America
- Europe
- Asia Pacific

&nbsp;

# Cloud Providers

- AWS
- Azure
- GCP
