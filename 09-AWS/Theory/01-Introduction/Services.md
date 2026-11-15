# Content

- [Content](#content)
- [AWS Important Services for Data Engineers](#aws-important-services-for-data-engineers)
  - [1. Compute Services](#1-compute-services)
  - [2. Storage Services](#2-storage-services)
  - [3. Database Services](#3-database-services)
  - [4. Data Integration and ETL Services](#4-data-integration-and-etl-services)
  - [5. Streaming and Messaging Services](#5-streaming-and-messaging-services)
  - [6. Analytics Services](#6-analytics-services)
  - [7. Orchestration Services](#7-orchestration-services)
  - [8. Security and Identity Services](#8-security-and-identity-services)
  - [9. Monitoring and Logging Services](#9-monitoring-and-logging-services)
  - [10. Infrastructure as Code and DevOps](#10-infrastructure-as-code-and-devops)
- [Which services should you learn first](#which-services-should-you-learn-first)

&nbsp;

&nbsp;

&nbsp;

# AWS Important Services for Data Engineers

## 1. Compute Services

| AWS Service | Purpose                        | Data Engineering Use Case                            | Priority |
| ----------- | ------------------------------ | ---------------------------------------------------- | -------- |
| EC2         | Virtual servers in AWS         | Host applications, scripts, and processing workloads | Medium   |
| Lambda      | Serverless compute             | Trigger data processing when files arrive in S3      | High     |
| ECS         | Run containerized applications | Deploy container-based data processing applications  | Low      |
| EKS         | Managed Kubernetes             | Run containerized data platforms at scale            | Low      |
| AWS Batch   | Run batch computing workloads  | Execute large-scale batch processing jobs            | Medium   |

## 2. Storage Services

| AWS Service | Purpose                    | Data Engineering Use Case                    | Priority  |
| ----------- | -------------------------- | -------------------------------------------- | --------- |
| S3          | Object storage             | Store raw, processed, and curated data       | Very High |
| EBS         | Block storage for EC2      | Store data on EC2-attached volumes           | Low       |
| EFS         | Shared file storage        | Share files across multiple EC2 instances    | Low       |
| S3 Glacier  | Long-term archival storage | Archive historical data                      | Medium    |
| FSx         | Managed file systems       | Support specialized file-system requirements | Low       |

## 3. Database Services

| AWS Service | Purpose                          | Data Engineering Use Case                          | Priority  |
| ----------- | -------------------------------- | -------------------------------------------------- | --------- |
| RDS         | Managed relational databases     | Extract data from PostgreSQL, MySQL, or SQL Server | High      |
| Aurora      | Cloud-native relational database | Source system for data ingestion                   | Medium    |
| DynamoDB    | NoSQL database                   | Ingest application and operational data            | Medium    |
| Redshift    | Cloud data warehouse             | Store and analyze large-scale structured data      | Very High |
| ElastiCache | In-memory caching                | Support low-latency application workloads          | Low       |
| DocumentDB  | Managed document database        | Ingest JSON/document-based application data        | Low       |

## 4. Data Integration and ETL Services

| AWS Service       | Purpose                                    | Data Engineering Use Case                               | Priority  |
| ----------------- | ------------------------------------------ | ------------------------------------------------------- | --------- |
| Glue              | Serverless data integration and ETL        | Transform data using PySpark                            | Very High |
| Glue Data Catalog | Centralized metadata repository            | Maintain database, table, and schema metadata           | Very High |
| Glue Crawler      | Discover schemas and create catalog tables | Automatically detect schemas in S3 data                 | High      |
| Glue Data Quality | Evaluate data quality rules                | Validate completeness, uniqueness, and accuracy         | High      |
| DMS               | Database Migration Service                 | Migrate or replicate data from source databases         | High      |
| AppFlow           | SaaS data integration                      | Ingest data from Salesforce and other SaaS applications | Medium    |
| DataSync          | Automated data transfer                    | Transfer data between on-premises storage and AWS       | Medium    |
| Transfer Family   | Managed file transfer                      | Ingest files through SFTP, FTPS, or FTP                 | Medium    |

## 5. Streaming and Messaging Services

| AWS Service           | Purpose                                | Data Engineering Use Case                          | Priority |
| --------------------- | -------------------------------------- | -------------------------------------------------- | -------- |
| Kinesis Data Streams  | Real-time data streaming               | Ingest continuous events and application logs      | High     |
| Kinesis Data Firehose | Deliver streaming data to destinations | Load streaming data into S3 or Redshift            | High     |
| MSK                   | Managed Apache Kafka                   | Build Kafka-based streaming pipelines              | Medium   |
| SQS                   | Message queuing                        | Decouple pipeline components                       | High     |
| SNS                   | Pub/sub notifications                  | Notify downstream systems about pipeline events    | High     |
| EventBridge           | Event-driven integration               | Trigger workflows based on AWS events or schedules | High     |

## 6. Analytics Services

| AWS Service        | Purpose                        | Data Engineering Use Case                       | Priority  |
| ------------------ | ------------------------------ | ----------------------------------------------- | --------- |
| Athena             | Serverless SQL query service   | Query data directly from S3                     | Very High |
| Redshift           | Data warehousing and analytics | Build analytical data models                    | Very High |
| EMR                | Managed big data platform      | Run Spark, Hadoop, and other big data workloads | Medium    |
| OpenSearch Service | Search and log analytics       | Analyze logs and operational events             | Low       |
| QuickSight         | Business intelligence          | Build dashboards and reports                    | Medium    |

## 7. Orchestration Services

| AWS Service           | Purpose                            | Data Engineering Use Case                       | Priority  |
| --------------------- | ---------------------------------- | ----------------------------------------------- | --------- |
| Step Functions        | Workflow orchestration             | Coordinate Lambda and Glue jobs                 | Very High |
| MWAA                  | Managed Apache Airflow             | Schedule and orchestrate complex data pipelines | High      |
| EventBridge Scheduler | Schedule AWS tasks                 | Trigger Glue jobs or workflows on a schedule    | High      |
| Glue Workflows        | Orchestrate Glue jobs and crawlers | Coordinate Glue-based ETL pipelines             | Medium    |

## 8. Security and Identity Services

| AWS Service                     | Purpose                                | Data Engineering Use Case                      | Priority  |
| ------------------------------- | -------------------------------------- | ---------------------------------------------- | --------- |
| IAM                             | Identity and access management         | Manage users, roles, and permissions           | Very High |
| KMS                             | Encryption key management              | Encrypt S3 data and other AWS resources        | High      |
| Secrets Manager                 | Store and rotate secrets               | Secure database credentials and API keys       | High      |
| Systems Manager Parameter Store | Store configuration and parameters     | Manage application configurations              | Medium    |
| CloudTrail                      | API activity auditing                  | Track who performed AWS actions                | High      |
| Lake Formation                  | Data lake permissions and governance   | Manage fine-grained access to data lake tables | High      |
| VPC                             | Network isolation                      | Securely connect data processing resources     | High      |
| Security Groups                 | Control instance-level network traffic | Restrict access to compute resources           | Medium    |

## 9. Monitoring and Logging Services

| AWS Service | Purpose                       | Data Engineering Use Case                          | Priority  |
| ----------- | ----------------------------- | -------------------------------------------------- | --------- |
| CloudWatch  | Monitoring and logging        | Monitor Lambda and Glue execution                  | Very High |
| CloudTrail  | Audit API activity            | Investigate access and configuration changes       | High      |
| AWS Config  | Track resource configurations | Detect configuration changes and compliance issues | Medium    |
| X-Ray       | Distributed tracing           | Troubleshoot application request flows             | Low       |
| SNS         | Notifications                 | Send pipeline failure alerts                       | High      |

## 10. Infrastructure as Code and DevOps

| AWS Service    | Purpose                                           | Data Engineering Use Case               | Priority |
| -------------- | ------------------------------------------------- | --------------------------------------- | -------- |
| CloudFormation | AWS infrastructure as code                        | Provision AWS resources using templates | Medium   |
| CodePipeline   | CI/CD orchestration                               | Automate deployment pipelines           | Medium   |
| CodeBuild      | Build and test applications                       | Run automated build and test jobs       | Medium   |
| CodeDeploy     | Application deployment                            | Deploy application changes              | Low      |
| AWS CDK        | Define infrastructure using programming languages | Automate AWS resource provisioning      | Medium   |

&nbsp;

&nbsp;

&nbsp;

# Which services should you learn first

Phase 1 – Must learn first

| Order | Service        | What You Should Learn                                    |
| ----- | -------------- | -------------------------------------------------------- |
| 1     | IAM            | Users, roles, policies, trust policies, least privilege  |
| 2     | S3             | Buckets, objects, storage classes, lifecycle, encryption |
| 3     | Lambda         | Functions, triggers, execution roles, error handling     |
| 4     | Glue           | ETL jobs, PySpark, crawlers, Data Catalog                |
| 5     | CloudWatch     | Logs, metrics, alarms, troubleshooting                   |
| 6     | Athena         | SQL queries on S3 data                                   |
| 7     | EventBridge    | Event-driven triggers and scheduling                     |
| 8     | Step Functions | Workflow orchestration                                   |

&nbsp;

&nbsp;

Phase 2 – Intermediate

| Order | Service | What You Should Learn |
|---|---|---|
| 9 | SQS | Queues, visibility timeout, dead-letter queues |
| 10 | SNS | Pub/sub notifications |
| 11 | DMS | Full load, CDC, database replication |
| 12 | Kinesis | Streaming ingestion |
| 13 | Redshift | Data warehouse, COPY, distribution and sort keys |
| 14 | Lake Formation | Data lake governance and permissions |
| 15 | Secrets Manager | Credential storage and rotation |
| 16 | VPC | Subnets, route tables, endpoints, security groups |

&nbsp;

Phase 3 – Advanced

| Order | Service | What You Should Learn |
|---|---|---|
| 17 | MWAA | Apache Airflow DAGs and orchestration |
| 18 | EMR | Spark cluster architecture and processing |
| 19 | MSK | Kafka architecture and streaming |
| 20 | Terraform | AWS infrastructure provisioning |
| 21 | KMS | Encryption keys and key policies |
| 22 | CloudTrail | Auditing and security investigations |
| 23 | AWS Config | Configuration compliance |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
