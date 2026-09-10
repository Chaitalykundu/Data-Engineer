# Content

- [Content](#content)
- [Questions](#questions)
- [Answers](#answers)
- [1. Explain an end-to-end data pipeline you designed and implemented](#1-explain-an-end-to-end-data-pipeline-you-designed-and-implemented)
  - [Purpose](#purpose)
  - [End-to-End Pipeline Architecture](#end-to-end-pipeline-architecture)
    - [🔄 The Pipeline in 6 Simple Steps](#-the-pipeline-in-6-simple-steps)
      - [Step 1: Client Sends an E-Invoice](#step-1-client-sends-an-e-invoice)
      - [Step 2: Files \& Metadata Get Copied to Our Data Platform](#step-2-files--metadata-get-copied-to-our-data-platform)
      - [✅ Step 3: Merge All Tenant Data into One Table (Staging Layer)](#-step-3-merge-all-tenant-data-into-one-table-staging-layer)
      - [✅ Step 4: Enrich the Data (Curated Layer)](#-step-4-enrich-the-data-curated-layer)
      - [✅ Step 5: Deduplicate \& Serve Final Data (Semantic Layer)](#-step-5-deduplicate--serve-final-data-semantic-layer)
      - [✅ Step 6: Compliance Reporting (VVC Reconciliation)](#-step-6-compliance-reporting-vvc-reconciliation)
- [6. How do micro-partitioning and partition pruning work in Snowflake?](#6-how-do-micro-partitioning-and-partition-pruning-work-in-snowflake)
- [7. When would you define a clustering key?](#7-when-would-you-define-a-clustering-key)
- [follow-up questions for " Explain an end-to-end data pipeline you designed and implemented."](#follow-up-questions-for--explain-an-end-to-end-data-pipeline-you-designed-and-implemented)
  - [1. "What happens when a new tenant onboards?"](#1-what-happens-when-a-new-tenant-onboards)
  - [2. "How do you handle schema changes across client databases?"](#2-how-do-you-handle-schema-changes-across-client-databases)
  - [3. "How do you prevent duplicate invoices in reporting?"](#3-how-do-you-prevent-duplicate-invoices-in-reporting)
  - [4. "How does the pipeline handle high volume and large XML files (up to 200MB)?"](#4-how-does-the-pipeline-handle-high-volume-and-large-xml-files-up-to-200mb)
  - [5. "How do you ensure EU data residency and security?"](#5-how-do-you-ensure-eu-data-residency-and-security)
    &nbsp;

&nbsp;

&nbsp;

# Questions

[Accenture Custom Software Engineer](https://www.accenture.com/in-en/careers/jobdetails?id=ATCI-5520199-S2014779_en&title=Custom+Software+Engineer&c=car_glb_curateddailycondialogbox_12220771&n=otc_0621)

1. Explain an end-to-end data pipeline you designed and implemented.
2. How did you use Snowflake and dbt together in your project?
3. What is your role and what exactly do you work on?
4. Why did you choose Snowflake for your data platform?
5. Explain the architecture of your data platform.
6. Explain the complete data flow from SQL Server/PostgreSQL to Snowflake.
7. What is your role in Terraform?
8. How did you implement Snowflake user onboarding using Terraform?
9. Explain the staging, intermediate, and mart layers in your dbt project.
10. How do you troubleshoot a failed data pipeline in production?
11. How do you optimize a slow-running Snowflake query?
12. How do micro-partitioning and partition pruning work in Snowflake?
13. When would you define a clustering key?
14. How do you implement incremental processing in dbt?
15. How do you prevent duplicate records during incremental loads?
16. Explain the CI/CD pipeline used to deploy dbt or Snowflake changes.
17. How do you manage dev, test, and production environments?
18. How do you test data transformations before production deployment?
19. How would you design a self-service data platform?
20. What is data governance, and how have you implemented it?
21. What is Master Data Management, and how is it different from data governance?
22. How do you increase users’ trust in a data platform?
23. Describe a production issue you diagnosed and permanently fixed.
24. How do you create standard operating procedures for recurring failures?
25. How do you handle schema changes from source systems?
26. How would you migrate data from PostgreSQL or SQL Server to Snowflake?
27. How did you implement RBAC using Terraform?
28. How did you automate infrastructure provisioning?
29. What challenges did you face in your project?
30. How did you improve pipeline reliability?
31. How did you reduce infrastructure setup time by 40%?
32. How do you monitor your pipelines?
33. How do you monitor Snowflake?
34. How do you use Datadog in your project?
35. Tell me about a performance issue you solved.
36. What was your biggest technical contribution to the project?

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Answers

# 1. Explain an end-to-end data pipeline you designed and implemented

## Purpose

When a client sends or receives an e-invoice, we capture both the invoice file (XML) and its details (metadata) from two different sources, clean them up, combine them, and make them available for compliance reporting.

The pipeline handles two distinct ingest streams: XML invoice payloads from S3 using S3 Event Notifications and Snowpipe into Snowflake VARIANT columns, and PostgreSQL tenant metadata using Fivetran Teleport Sync over a site-to-site VPN. One key innovation here is our auto-tenant onboarding logic — Fivetran auto-detects new client schemas as they are provisioned, eliminating manual pipeline changes.

To solve the challenge of having thousands of isolated tenant schemas in the RAW layer, we implemented an automated Dynamic Task DAG in Snowflake. A controller procedure checks for schema changes via metadata checkpoints and dynamically constructs a Snowflake Task tree. Using Snowflake Streams for CDC, it converges data from all tenant schemas into a single multi-tenant staging layer with standardized tenant_id and audit attributes.

Finally, using dbt, we transform and model this data through Curated and Semantic layers, delivering a deduplicated MD_EINVOICE semantic data set consumed by our VAT Compliance application."

&nbsp;

&nbsp;

## End-to-End Pipeline Architecture

The pipeline consists of 2 dual ingestion streams that converge into a 4-layer Medallion architecture (RAW → STG → CURATED → SEMANTIC).

```
                      ┌─────────────────────────────────────────┐
                      │  E-Invoice Source (Platform AWS Account) │
                      └────────────────────┬────────────────────┘
                                           │
             ┌─────────────────────────────┴─────────────────────────────┐
             ▼                                                           ▼
┌─────────────────────────┐                                ┌─────────────────────────┐
│ Aurora PostgreSQL DB    │                                │ AWS S3 Primary Buckets  │
│ (Tenant Schemas: doc,   │                                │ (e-invoice XML files    │
│ lineitem, auditlog...)  │                                │  & attachments)         │
└────────────┬────────────┘                                └────────────┬────────────┘
             │ (Site-to-Site VPN)                                       │ (S3 Replication)
             ▼                                                           ▼
┌─────────────────────────┐                                ┌─────────────────────────┐
│ Fivetran Connector      │                                │ Data Platform S3 Bucket │
│ (Teleport Sync + Auto-  │                                │ (vdf-einv-[env])        │
│ Tenant Schema Detection)│                                └────────────┬────────────┘
└────────────┬────────────┘                                             │ (SQS / Notification)
             │                                                           ▼
             │                                             ┌─────────────────────────┐
             │                                             │ Snowflake Snowpipe      │
             └─────────────────────────────┬───────────────┴─────────────────────────┘
                                           │
                                           ▼
             ┌───────────────────────────────────────────────────────────┐
             │ RAW Layer (DB_[ENV]_EINVOICE_RAW)                         │
             │ - Schema per Tenant: EINVOICE_TENANT_<TENANT_ID>          │
             │ - XML Payload Table: EINVOICE.EINVOICE (VARIANT payload)  │
             └─────────────────────────────┬─────────────────────────────┘
                                           │ (Dynamic Task DAG + Streams)
                                           ▼
             ┌───────────────────────────────────────────────────────────┐
             │ STAGING Layer (DB_[ENV]_EINVOICE_STG)                     │
             │ - Converged Multi-Tenant Tables (STG_DOCUMENT, etc.)     │
             │ - Appends tenant_id, row_id, audit timestamps             │
             └─────────────────────────────┬─────────────────────────────┘
                                           │ (dbt Transformations)
                                           ▼
             ┌───────────────────────────────────────────────────────────┐
             │ CURATED Layer (DB_[ENV]_EINVOICE_CURATED)                 │
             │ - Enriched with Client Control (dfClientControlId)        │
             └─────────────────────────────┬─────────────────────────────┘
                                           │
                                           ▼
             ┌───────────────────────────────────────────────────────────┐
             │ SEMANTIC Layer (DB_[ENV]_EINVOICE_SEMANTIC)               │
             │ - Deduplicated view (MD_EINVOICE) per (tenant_id, doc_id) │
             │ - Consumed by Vertex VAT Compliance (VVC) & Power BI     │
             └───────────────────────────────────────────────────────────┘
```

&nbsp;

### 🔄 The Pipeline in 6 Simple Steps

#### Step 1: Client Sends an E-Invoice

A Vertex client (tenant) sends or receives an electronic invoice through the Vertex E-Invoicing Application.

Two things happen at the same time:

- The XML invoice file is saved to an AWS S3 bucket (`einv-[env]-primary`)

- The invoice details/metadata (supplier, buyer, amount, dates, status) are saved to a PostgreSQL database (EINV_Customer) — one schema per client tenant

&nbsp;

&nbsp;

#### Step 2: Files & Metadata Get Copied to Our Data Platform

For the XML file (Path A):

- S3 automatically replicates (copies) the file from the E-Invoice S3 bucket → to the Data Platform S3 bucket (`vdf-einv-[env]`)

- This copy triggers an S3 Event Notification → which triggers Snowpipe

- Snowpipe reads the file and loads it into Snowflake RAW layer table (EINVOICE) as a VARIANT (raw XML) column

- The tenant ID and document ID are extracted directly from the S3 folder path

&nbsp;

&nbsp;

For the metadata (Path B):

- Fivetran connects to the PostgreSQL database through a site-to-site VPN

- It detects all tenant schemas automatically (no manual work needed when a new client onboards!)

- It syncs all tables (document, lineitem, auditlog, etc.) into the Snowflake RAW layer — one schema per tenant (`EINVOICE_TENANT_<TENANT_ID>`)

🗂️ After Step 2: RAW layer has hundreds of separate tenant schemas, each with their own tables.

&nbsp;

&nbsp;

#### ✅ Step 3: Merge All Tenant Data into One Table (Staging Layer)

The Problem: Data is spread across hundreds of tenant schemas in RAW. We need it all in one place.

The Solution — Dynamic Task DAG:

- A Controller Task runs on a schedule and triggers a stored procedure

- The procedure checks if any new tenant schemas were added or removed

- If needed, it automatically rebuilds a Snowflake Task tree (Dynamic DAG)

- The task tree uses Snowflake Streams (CDC) to pick up only new/changed data

- It unions all tenant tables into a single multi-tenant staging table (e.g., STG_DOCUMENT), adding extra columns:
  - tenant_id → who this invoice belongs to

  - row_id, created_ts, \_merged_process_run_cd → for tracking and auditing

🗂️ After Step 3: One clean, unified table in the STAGING layer with all tenants' data together.

&nbsp;

&nbsp;

#### ✅ Step 4: Enrich the Data (Curated Layer)

Using dbt transformation models:

- Join the staged invoice data with Client Control data (dfClientControlId) to link invoices back to business clients

- Add business attributes like: clientName, deliveryDirection (Send/Receive), countryCode, taxBaseAmount, taxPointDate, invoiceIssueDate

- Filter: only allow VBL (Vertex Business Language) format invoices

🗂️ After Step 4: Enriched, business-ready invoice data in the CURATED layer.

&nbsp;

&nbsp;

#### ✅ Step 5: Deduplicate & Serve Final Data (Semantic Layer)

- Sometimes the same invoice can appear multiple times (updates, retries)

- The Semantic layer picks only the latest record per (tenant_id, document_id) using:

  ```
  ROW_NUMBER() OVER (PARTITION BY tenant_id, document_id ORDER BY created_ts DESC)
  ```

- The final clean view MD*EINVOICE is exposed in `DB*[ENV]\_EINVOICE_SEMANTIC`

🗂️ After Step 5: Clean, deduplicated, final invoice data ready for consumers.

&nbsp;

&nbsp;

#### ✅ Step 6: Compliance Reporting (VVC Reconciliation)

- The Vertex VAT Compliance (VVC) application reads the Semantic layer

- It matches e-invoices against tax return filings → Reconciliation Reports for clients

- Clients can verify that every e-invoice they sent/received is accounted for in their VAT returns

&nbsp;

&nbsp;

&nbsp;

# 6. How do micro-partitioning and partition pruning work in Snowflake?

When we load or insert data into Snowflake, it automatically breaks data into small blocks of storage. These are called **micro-partitions**.

Each micro-partition:

- Contains ~16 MB of compressed data and 50 MB–500 MB uncompressed data
- Data is stored in columnar format
- Maintains metadata such as:
  - Minimum and maximum value per column
  - Number of distinct values
  - NULL count
  - Other statistics used for optimization

&nbsp;

**Partition pruning**

Partition pruning is the process of skipping micro-partitions that cannot contain data required by a query.

```sql
SELECT order_id, region
FROM sales
WHERE order_date BETWEEN '2026-03-01' AND '2026-04-30';
```

Snowflake examines the micro-partition metadata:

- MP1: January–February → skipped
- MP2: March–April → scanned
- MP3: May–June → skipped
- MP4: July–August → skipped

Only MP2 needs to be read.

&nbsp;

Snowflake generally performs:

- **Metadata lookup**: Checks the minimum and maximum ORDER_DATE stored for each micro-partition.
- **Partition pruning**: Eliminates partitions whose ranges cannot include 2026-07-01.
- **Column pruning**: Reads only ORDER_ID, REGION, and ORDER_DATE, rather than every column.
- **Filtering**: Applies the exact condition to rows within the remaining partitions.
- **Result generation**: Returns ORDER_ID and REGION.

&nbsp;

When you run:

```sql
SELECT *
FROM sales
WHERE order_date = '2026-02-15';
```

Snowflake uses `ORDER_DATE` metadata because that column appears in the filter.

For another query:

```sql
SELECT *
FROM sales
WHERE customer_id = 1001;
```

Snowflake uses the `CUSTOMER_ID` metadata instead.

Therefore, the column used for pruning is determined by the query filter, not by a predefined micro-partition column.

&nbsp;

&nbsp;

&nbsp;

# 7. When would you define a clustering key?

&nbsp;

&nbsp;

&nbsp;

# follow-up questions for " Explain an end-to-end data pipeline you designed and implemented."

1. "What happens when a new tenant (client) is added to the system?"
2. "How do you handle schema changes (like adding a new column) across client schemas?"
3. "How do you prevent duplicate invoices from showing up in downstream reports?"
4. "How does the pipeline handle high file volumes or large XML payloads (up to 200MB)?"
5. "What happens if a Fivetran sync or S3 replication fails?"

&nbsp;

&nbsp;

## 1. "What happens when a new tenant onboards?"

"It’s 100% automated. Fivetran auto-detects the new PostgreSQL schema and syncs it into RAW. The S3 path handles the XML files. Then, our dynamic controller task detects the new schema from table metadata and automatically rebuilds the Snowflake Task tree to merge the new tenant into Staging."

&nbsp;

## 2. "How do you handle schema changes across client databases?"

"Fivetran automatically propagates new source columns into RAW. In Staging, our dynamic stored procedures inspect table metadata dynamically at runtime, appending new columns without breaking downstream dbt models."

&nbsp;

## 3. "How do you prevent duplicate invoices in reporting?"

"Snowpipe prevents duplicate S3 file loads using 14-day file hash tracking. In the Semantic layer, we use window functions (ROW_NUMBER() PARTITION BY tenant_id, document_id ORDER BY created_ts DESC) so downstream applications like VVC only query the latest version."

&nbsp;

## 4. "How does the pipeline handle high volume and large XML files (up to 200MB)?"

"Snowpipe handles micro-batching asynchronously straight from S3 into Snowflake VARIANT columns. Transformation models run incrementally with dbt and multi-cluster virtual warehouses to scale compute on demand."

&nbsp;

## 5. "How do you ensure EU data residency and security?"

"Production is hosted directly in AWS eu-central-1 (Frankfurt) and Snowflake EU accounts to satisfy strict European tax regulations. Communication uses Site-to-Site VPN, key-pair auth, and strict RBAC standards."

&nbsp;
