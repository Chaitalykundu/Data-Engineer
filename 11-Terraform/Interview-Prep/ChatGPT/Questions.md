# Content

- [Content](#content)
- [12-07-2026](#12-07-2026)
- [15-07-2026](#15-07-2026)
- [Interview Challenge](#interview-challenge)
  - [Challenge](#challenge)
- [Hands-on](#hands-on)
  - [1. Design a Secure Sales Warehouse](#1-design-a-secure-sales-warehouse)
  - [2. Build a Secure Snowflake Environment with Terraform](#2-build-a-secure-snowflake-environment-with-terraform)
- [Senior-Level Scenario](#senior-level-scenario)
  - [Scenario 1](#scenario-1)
  - [Scenario 2](#scenario-2)
- [Common Interview Mistakes](#common-interview-mistakes)
  - [Mistake 1](#mistake-1)
  - [Mistake 2](#mistake-2)
  - [Mistake 3](#mistake-3)

&nbsp;

&nbsp;

&nbsp;

# 12-07-2026

1. Why should Snowflake objects be managed through Terraform instead of manual SQL?
2. How does Terraform detect changes?

&nbsp;

&nbsp;

# 15-07-2026

1. How would you structure Terraform code for managing multiple Snowflake environments (Dev, QA, Prod)?
2. Why is storing the Terraform state file locally risky?

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview Challenge

## Challenge

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Hands-on

## 1. Design a Secure Sales Warehouse

Create the following roles:

```
SYSADMIN
DATA_ENGINEER
DATA_ANALYST
READ_ONLY
```

&nbsp;

Requirements:

- **DATA_ENGINEER** can create tables, views, stages, tasks, and warehouses in SALES_DB.
- **DATA_ANALYST** has read-only access to all current and future tables and views in the REPORTING schema.
- **READ_ONLY** can query only curated reporting views (not base tables).

&nbsp;

Use Terraform to define:

- Roles
- Role hierarchy
- Warehouse
- Database grants
- Schema grants
- Future grants for tables and views

Consider how you would organize the Terraform code into reusable modules and environment-specific variables.

&nbsp;

&nbsp;

## 2. Build a Secure Snowflake Environment with Terraform

Requirements:

Create using Terraform:

- Database
- Schema
- Warehouse
- Resource Monitor
- Roles:
  - DATA_ENGINEER
  - DATA_ANALYST
  - ETL_SERVICE

&nbsp;

Configure:

- Least-privilege role hierarchy.
- Network policy for corporate IP addresses.
- Warehouse auto-suspend after 60 seconds.
- Auto-resume enabled.
- Resource monitor with a monthly credit quota.
- Separate variables for Dev and Prod warehouse sizes.
- Remote Terraform state (or document the chosen backend and locking strategy).

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Senior-Level Scenario

## Scenario 1

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

## Scenario 2

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

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Common Interview Mistakes

### Mistake 1

Treating Terraform as a deployment tool only.

Correct

Terraform manages the lifecycle of infrastructure, including provisioning, updates, state management, and drift detection.

&nbsp;

&nbsp;

### Mistake 2

"Terraform automatically backs up the state."

Correction

Terraform relies on the configured backend. State durability, versioning, and locking depend on that backend.

&nbsp;

&nbsp;

### Mistake 3

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
