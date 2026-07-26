# Content

- [Content](#content)
- [12-07-2026 ------- Scenario 1](#12-07-2026---------scenario-1)
- [13-07-2026 ------- Scenario 2](#13-07-2026---------scenario-2)
- [14-07-2026 ------- Scenario 3](#14-07-2026---------scenario-3)
- [15-07-2026 ------- Scenario 4](#15-07-2026---------scenario-4)
- [16-07-2026 ------- Scenario 5](#16-07-2026---------scenario-5)
- [17-07-2026 ------- Scenario-6](#17-07-2026---------scenario-6)
- [18-07-2026 ------- Scenario-7](#18-07-2026---------scenario-7)
- [20-07-2026 ------- Scenario-8](#20-07-2026---------scenario-8)
- [21-07-2026 ------- Scenario-8](#21-07-2026---------scenario-8)
- [26-07-2026 ------](#26-07-2026-------)

&nbsp;

&nbsp;

&nbsp;

# 12-07-2026 ------- Scenario 1

Focused area: Snowflake, Terraform

&nbsp;

Your organization has:

- 400+ Snowflake users
- Multiple business units
- Dev, QA, and Prod environments
- Terraform-managed infrastructure
- Hundreds of databases and schemas

&nbsp;

Design an RBAC strategy that addresses:

- Separation of platform, engineering, analyst, and application roles.
- Use of database roles versus account roles.
- Future grants for new tables and views.
- Promotion of Terraform changes across environments with minimal manual intervention.
- Handling temporary elevated access (break-glass access) while maintaining auditability.

In an interview, focus on least-privilege access, role inheritance, environment isolation, automation, and operational maintainability rather than only listing SQL grant statements.

&nbsp;

&nbsp;

# 13-07-2026 ------- Scenario 2

A retail platform receives 15 million orders per day from multiple regions.

Current issues:

- Python ETL jobs sometimes reprocess files after failures.
- Duplicate orders appear in the reporting layer.
- Morning dashboards are delayed due to warehouse queueing.
- Query latency has increased as the ORDERS table has grown.

&nbsp;

Design a solution that addresses:

- An idempotent ingestion strategy using Python and Snowflake.
- Efficient incremental loading with MERGE.
- Warehouse sizing and multi-cluster configuration for ingestion and BI workloads.
- SQL optimization techniques to reduce scan costs.
- Monitoring metrics (query history, warehouse load, bytes scanned, queue time, execution time) to detect regressions.

A strong interview answer should connect reliability, performance, scalability, and operational monitoring into one coherent architecture rather than treating each issue independently.

&nbsp;

&nbsp;

# 14-07-2026 ------- Scenario 3

An e-commerce platform ingests 50 million order events per day.

Current issues:

- Duplicate processing occurs after task failures.
- dbt incremental models occasionally miss late-arriving updates.
- Reporting queries have become slower as fact tables grow.
- The operations team wants a fully automated pipeline with minimal manual intervention.

&nbsp;

Design a solution that explains:

- How Snowflake Streams and Tasks provide reliable incremental processing.
- How dbt incremental models should handle late-arriving data (for example, using a lookback window or merge strategy rather than filtering only on the latest timestamp).
- How to make the pipeline idempotent and recover safely after failures.
- How you would optimize large fact-table queries (clustering, partition pruning, warehouse sizing, and SQL tuning).
- Which monitoring metrics you would track, such as task history, stream freshness, query execution time, bytes scanned, queue time, and warehouse utilization.

A strong interview answer should emphasize reliability, recoverability, and operational monitoring in addition to correctness and performance.

&nbsp;

&nbsp;

# 15-07-2026 ------- Scenario 4

Your company is migrating from a manually managed Snowflake environment to a fully automated platform.

Current challenges:

- Developers manually create databases and roles.
- Password-based service accounts are widely used.
- RBAC differs between Dev, QA, and Prod.
- Terraform deployments occasionally overwrite manual changes.
- Analysts accidentally receive broader privileges than intended.

&nbsp;

Design a solution that explains:

- A modular Terraform repository structure for Snowflake resources.
- An RBAC strategy using account roles, database roles, and role inheritance.
- Authentication using Workload Identity Federation for application workloads.
- A process for detecting and resolving Terraform drift before applying changes.
- Security controls including network policies, least privilege, resource monitors, and environment isolation.

A strong interview answer should show how Infrastructure as Code, RBAC, authentication, and governance work together to create a secure, repeatable, and auditable Snowflake platform.

&nbsp;

&nbsp;

# 16-07-2026 ------- Scenario 5

Your company processes 2 TB of customer and order data daily.

Current challenges:

- CSV files arrive continuously throughout the day.
- Customer dimension updates must appear within 5 minutes.
- Some files are accidentally delivered twice.
- API enrichment occasionally times out.
- Business users expect low-latency reporting without manual refreshes.

&nbsp;

Design an architecture that explains:

- How Python ingests and validates files while preventing duplicate processing.
- When to use Dynamic Tables versus Streams and Tasks for downstream transformations.
- How to make the ingestion and transformation pipeline idempotent.
- How to monitor Dynamic Table refresh health, Python job failures, and data quality.
- How you would balance warehouse size, TARGET_LAG, and compute cost to meet the 5-minute SLA.

A strong interview answer should demonstrate an understanding of pipeline reliability, Snowflake-native transformation options, operational monitoring, and performance trade-offs rather than focusing on a single technology.

&nbsp;

&nbsp;

# 17-07-2026 ------- Scenario-6

Your organization manages a 20 TB Snowflake warehouse with daily incremental loads from multiple source systems.

Recent incidents include:

- A production table was accidentally dropped.
- Duplicate records entered the staging layer due to upstream retries.
- A dbt deployment introduced an incorrect transformation that passed technical tests but produced inaccurate business metrics.
- The release team needs a fast rollback strategy before every production deployment.

&nbsp;

Design a solution that explains:

- How Time Travel and Zero-Copy Cloning support recovery and deployment safety.
- How to prevent duplicate records before executing MERGE.
- How to combine dbt generic tests, singular tests, and business validation checks.
- How to make incremental pipelines idempotent and resilient to retries.
- Which operational metrics you would monitor (failed merges, duplicate key counts, test failures, clone usage, recovery events, and load durations).

A strong interview answer should connect recovery, deployment safety, data quality, and incremental processing into a single operational strategy rather than treating them as separate concerns.

&nbsp;

&nbsp;

# 18-07-2026 ------- Scenario-7

Your company runs:

- 800+ Snowflake users
- 300 TB of analytical data
- Terraform-managed infrastructure
- GitHub Actions for deployments
- Hourly ELT pipelines feeding executive dashboards

&nbsp;

Recently:

- Dashboard queries slowed significantly during business hours.
- An engineer accidentally attempted to delete a production warehouse through Terraform.
- Several reporting queries scan far more data than expected.

&nbsp;

Design an end-to-end solution that addresses:

1. Performance tuning
   - Separate ETL and BI warehouses.
   - Use appropriate warehouse sizing and multi-cluster settings.
   - Monitor bytes scanned, partition pruning, queue time, and warehouse utilization.

2. Terraform governance
   - Modular code structure.
   - Remote state with locking.
   - terraform plan approval gates.
   - prevent_destroy on critical production resources.

3. SQL optimization
   - Rewrite non-sargable predicates.
   - Avoid unnecessary SELECT \*.
   - Filter early and review join strategies.
   - Monitor query profiles for regressions.

4. Operational monitoring
   - Track query latency, warehouse credit consumption, queue times, failed deployments, and infrastructure drift.

A strong interview answer should demonstrate how infrastructure management, query optimization, and operational monitoring work together to deliver a secure, cost-efficient, and high-performing data platform.

&nbsp;

&nbsp;

# 20-07-2026 ------- Scenario-8

A financial services company processes 100 million customer transactions daily.

Current challenges:

- Customer profile changes must be historically traceable.
- Multiple dependent transformations currently rely on an external scheduler.
- Data reconciliation after nightly loads is manual and time-consuming.
- Pipeline failures sometimes leave downstream reporting partially updated.

&nbsp;

Design a solution that explains:

- How dbt Snapshots preserve historical customer data.
- How a Snowflake Task Graph orchestrates incremental transformations with clear dependencies.
- How to design each task to be idempotent so reruns after failures are safe.
- How to use UNION ALL and EXCEPT for reconciliation and validation between source, snapshot, and reporting layers.
- Which operational metrics you would monitor, such as task execution duration, task failures, snapshot row growth, reconciliation differences, and end-to-end pipeline latency.

A strong interview answer should demonstrate how orchestration, historical tracking, validation, and recoverability combine to create a reliable enterprise data platform.

&nbsp;

&nbsp;

# 21-07-2026 ------- Scenario-8

Your organization ingests 500 GB of CSV files every day from cloud object storage into Snowflake.

Current challenges:

- Some files are accidentally uploaded twice.
- Network interruptions occasionally cause partial pipeline failures.
- Security policy prohibits storing cloud access keys.
- Operations teams need detailed logs and audit trails.
- Business users require confidence that only validated data reaches reporting tables.

&nbsp;

Design a solution that addresses:

- Secure cloud access using Storage Integrations and cloud-native identities.
- Reliable ingestion with external stages, COPY INTO, validation, and idempotent processing.
- Production-grade Python ETL with structured logging, exception handling, retries, and audit logging.
- Transactional integrity to ensure consistent data when validation or transformations fail.
- Monitoring using load history, audit tables, pipeline logs, and alerts for failed loads or duplicate file detection.

A strong interview answer should demonstrate how security, reliability, observability, and transactional consistency work together to build a production-ready ingestion pipeline.

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

# 26-07-2026 ------

A software company provides analytics to 50 enterprise customers, each with its own Snowflake account.

Requirements:

- Customers must access only their own data.
- Data should remain in the provider account (no exports or copies).
- Infrastructure must be managed through Terraform.
- Production deployments require approval and rollback capability.
- Query performance should remain consistent as the shared dataset grows.

&nbsp;

Design a solution covering:

1.  Secure Data Sharing
    - Use shares and Secure Views.
    - Apply Masking Policies and Row Access Policies where appropriate.
    - Grant only the required objects.
2.  Infrastructure as Code
    - Build reusable Terraform modules.
    - Separate Dev, QA, and Prod state.
    - Integrate validation and approval into CI/CD.
3.  Performance
    - Optimize SQL for partition pruning.
    - Review query profiles regularly.
    - Monitor warehouse utilization and credit consumption.
4.  Governance
    - Audit access to shared data.
    - Periodically review grants and role assignments.
    - Track deployment history and infrastructure changes.

&nbsp;

&nbsp;
