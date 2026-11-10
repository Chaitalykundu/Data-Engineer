# Content

- [Content](#content)
- [What you will learn](#what-you-will-learn)
- [Complete 45-day AWS learning plan](#complete-45-day-aws-learning-plan)
- [Project: AWS Data Ingestion and Validation Pipeline](#project-aws-data-ingestion-and-validation-pipeline)
- [Which AWS services should you prioritize for interviews?](#which-aws-services-should-you-prioritize-for-interviews)

&nbsp;

&nbsp;

&nbsp;

# What you will learn

- Phase 1 — AWS fundamentals
- Phase 2 — Storage and security
- Phase 3 — Data ingestion and processing
- Phase 4 — Analytics and orchestration
- Phase 5 — End-to-end project and interviews

&nbsp;

&nbsp;

# Complete 45-day AWS learning plan

| Day | Phase                                     | Topic                                                        | Hands-on Task / Expected Outcome                                  | Status      |
| --: | ----------------------------------------- | ------------------------------------------------------------ | ----------------------------------------------------------------- | ----------- |
|   1 | Phase 1 - AWS Foundations                 | Cloud computing, AWS account, regions and Availability Zones | Explain AWS architecture in your own words                        | Not Started |
|   2 | Phase 1 - AWS Foundations                 | IAM users, groups, roles, policies and least privilege       | Create and test a safe IAM policy                                 | Not Started |
|   3 | Phase 1 - AWS Foundations                 | AWS Console, AWS CLI and basic commands                      | List S3 buckets using the CLI                                     | Not Started |
|   4 | Phase 1 - AWS Foundations                 | S3 buckets, objects, prefixes, versioning and lifecycle      | Upload and download a sample CSV                                  | Not Started |
|   5 | Phase 1 - AWS Foundations                 | Billing, budgets, encryption and shared responsibility       | Set a budget alert and review security settings                   | Not Started |
|   6 | Phase 2 - S3 and Data Security            | S3 folder design and raw/processed data zones                | Create a raw and processed data layout                            | Not Started |
|   7 | Phase 2 - S3 and Data Security            | CSV, JSON, Parquet and compression                           | Compare sample file formats                                       | Not Started |
|   8 | Phase 2 - S3 and Data Security            | IAM roles, trust policies and service permissions            | Explain how Lambda accesses S3 securely                           | Not Started |
|   9 | Phase 2 - S3 and Data Security            | S3 event notifications                                       | Understand how file uploads trigger processing                    | Not Started |
|  10 | Phase 2 - S3 and Data Security            | KMS encryption, bucket policies and access controls          | Verify access restrictions                                        | Not Started |
|  11 | Phase 2 - S3 and Data Security            | AWS networking: VPC, subnets, security groups and endpoints  | Draw a basic private data architecture                            | Not Started |
|  12 | Phase 2 - S3 and Data Security            | Review and troubleshooting                                   | Resolve an intentional S3 access-denied error                     | Not Started |
|  13 | Phase 3 - API Ingestion, Lambda and Glue  | HTTP, REST APIs, GET/POST, JSON, pagination                  | Read a sample API response using Python                           | Not Started |
|  14 | Phase 3 - API Ingestion, Lambda and Glue  | API authentication, headers, timeouts and rate limits        | Handle API errors and pagination                                  | Not Started |
|  15 | Phase 3 - API Ingestion, Lambda and Glue  | Lambda fundamentals and execution roles                      | Create a small Python Lambda function                             | Not Started |
|  16 | Phase 3 - API Ingestion, Lambda and Glue  | Lambda with S3                                               | Save API data into an S3 raw zone                                 | Not Started |
|  17 | Phase 3 - API Ingestion, Lambda and Glue  | Lambda limits, retries, idempotency and CloudWatch logs      | Handle failed requests safely                                     | Not Started |
|  18 | Phase 3 - API Ingestion, Lambda and Glue  | Glue overview, Data Catalog, databases and tables            | Create a Glue Catalog database                                    | Not Started |
|  19 | Phase 3 - API Ingestion, Lambda and Glue  | Glue crawlers and schema discovery                           | Catalog CSV and JSON files in S3                                  | Not Started |
|  20 | Phase 3 - API Ingestion, Lambda and Glue  | Glue ETL and PySpark basics                                  | Read, transform and write a dataset                               | Not Started |
|  21 | Phase 3 - API Ingestion, Lambda and Glue  | Data validation and data quality                             | Check nulls, duplicates, required fields and types                | Not Started |
|  22 | Phase 3 - API Ingestion, Lambda and Glue  | Bad records, quarantine and audit metadata                   | Separate invalid records from valid data                          | Not Started |
|  23 | Phase 3 - API Ingestion, Lambda and Glue  | Incremental loads, watermarks and CDC concepts               | Process only new or changed records                               | Not Started |
|  24 | Phase 3 - API Ingestion, Lambda and Glue  | Glue job bookmarks and reruns                                | Understand how to avoid unintended reprocessing                   | Not Started |
|  25 | Phase 3 - API Ingestion, Lambda and Glue  | Integrate and test the ingestion pipeline                    | Run API/file ingestion and validate the output                    | Not Started |
|  26 | Phase 4 - Redshift and Orchestration      | Redshift architecture and when to use it                     | Compare Redshift with Snowflake                                   | Not Started |
|  27 | Phase 4 - Redshift and Orchestration      | Redshift schemas, tables and loading concepts                | Design a target analytics schema                                  | Not Started |
|  28 | Phase 4 - Redshift and Orchestration      | Load data from S3 into Redshift                              | Practise COPY and IAM role concepts                               | Not Started |
|  29 | Phase 4 - Redshift and Orchestration      | Redshift SQL, joins and aggregations                         | Build analytical queries                                          | Not Started |
|  30 | Phase 4 - Redshift and Orchestration      | Warehouse performance, distribution and sort concepts        | Explain basic query optimization                                  | Not Started |
|  31 | Phase 4 - Redshift and Orchestration      | EventBridge schedules and event-driven processing            | Design a scheduled ingestion trigger                              | Not Started |
|  32 | Phase 4 - Redshift and Orchestration      | Step Functions orchestration                                 | Create a workflow with success and failure paths                  | Not Started |
|  33 | Phase 4 - Redshift and Orchestration      | CloudWatch metrics, logs and alarms                          | Identify a failed job from logs                                   | Not Started |
|  34 | Phase 4 - Redshift and Orchestration      | Retries, alerts, recovery and idempotency                    | Design a safe rerun strategy                                      | Not Started |
|  35 | Phase 4 - Redshift and Orchestration      | End-to-end pipeline review                                   | Draw the pipeline and explain every component                     | Not Started |
|  36 | Phase 5 - Project and Interview Readiness | Finalize requirements and architecture                       | Create a design document                                          | Not Started |
|  37 | Phase 5 - Project and Interview Readiness | Implement API extraction                                     | Fetch and land API data in S3                                     | Not Started |
|  38 | Phase 5 - Project and Interview Readiness | Implement file ingestion                                     | Land CSV/JSON files in the raw zone                               | Not Started |
|  39 | Phase 5 - Project and Interview Readiness | Implement validation and quarantine                          | Reject invalid records with reasons                               | Not Started |
|  40 | Phase 5 - Project and Interview Readiness | Implement Glue transformations                               | Produce clean Parquet output                                      | Not Started |
|  41 | Phase 5 - Project and Interview Readiness | Load the analytics layer                                     | Load valid data into Redshift or validate a Snowflake alternative | Not Started |
|  42 | Phase 5 - Project and Interview Readiness | Orchestration and monitoring                                 | Add scheduling, failure handling and logs                         | Not Started |
|  43 | Phase 5 - Project and Interview Readiness | Test edge cases and recovery                                 | Test duplicate files, bad data and API failure                    | Not Started |
|  44 | Phase 5 - Project and Interview Readiness | Documentation and resume bullets                             | Publish architecture, test results and project README             | Not Started |
|  45 | Phase 5 - Project and Interview Readiness | Mock interviews and project walkthrough                      | Answer architecture and troubleshooting scenarios                 | Not Started |

&nbsp;

&nbsp;

&nbsp;

# Project: AWS Data Ingestion and Validation Pipeline

How the pipeline should behave
Suppose an API returns 10,000 customer records.

1. Lambda fetches data from the API, handles pagination and saves the original response to S3.
2. Glue reads the landed data and validates required fields, data types, duplicates and business rules.
3. Valid records are transformed into the target format; invalid records are stored separately with a reason for rejection.
4. Valid data is loaded into Redshift or your existing Snowflake environment.
5. CloudWatch captures logs and metrics. Failed processing should be recoverable without loading duplicate records.

&nbsp;

&nbsp;

&nbsp;

# Which AWS services should you prioritize for interviews?

| Priority                  | Services                                | What you must be able to explain                     |
| ------------------------- | --------------------------------------- | ---------------------------------------------------- |
| Must learn first          | IAM, S3, Lambda                         | Permissions, file ingestion, triggers, retries       |
| Must learn next           | Glue, PySpark, Data Catalog             | ETL, schema discovery, data quality                  |
| Must learn for projects   | CloudWatch, EventBridge, Step Functions | Monitoring, scheduling, orchestration                |
| Learn for analytics roles | Redshift, Athena                        | Warehousing, SQL, querying files in S3               |
| Learn for production work | VPC, KMS, Secrets Manager, CloudTrail   | Networking, secrets, encryption, auditing            |
| Learn after the basics    | SQS, SNS, Terraform for AWS             | Decoupling, notifications, infrastructure automation |

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
