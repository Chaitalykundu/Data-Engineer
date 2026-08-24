# Content

- [Content](#content)
- [Questions](#questions)
  - [12-07-2026](#12-07-2026)
  - [15-07-2026](#15-07-2026)
  - [Terraform State \& Snowflake IaC](#terraform-state--snowflake-iac)
- [Interview Challenge](#interview-challenge)
  - [Challenge](#challenge)
- [Hands-on](#hands-on)
  - [1. Design a Secure Sales Warehouse](#1-design-a-secure-sales-warehouse)
  - [2. Build a Secure Snowflake Environment with Terraform](#2-build-a-secure-snowflake-environment-with-terraform)
- [Common Interview Mistakes](#common-interview-mistakes)
  - [Mistake 1](#mistake-1)
  - [Mistake 2](#mistake-2)
  - [Mistake 3](#mistake-3)
  - [Mistake 4](#mistake-4)
  - [Mistake 5](#mistake-5)

&nbsp;

&nbsp;

&nbsp;

# Questions

## 12-07-2026

1. Why should Snowflake objects be managed through Terraform instead of manual SQL?
2. How does Terraform detect changes?

&nbsp;

&nbsp;

## 15-07-2026

1. How would you structure Terraform code for managing multiple Snowflake environments (Dev, QA, Prod)?
2. Why is storing the Terraform state file locally risky?

&nbsp;

## Terraform State & Snowflake IaC

1. Why does Terraform need a state file?
2. Why should a team avoid storing terraform.tfstate in Git?
3. Someone manually creates PROD_WH in Snowflake, but you now want Terraform to manage it. What should you do?

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

"terraform apply should run directly after every commit."

Correction

In production, review the terraform plan output and use approval gates before applying infrastructure changes.

&nbsp;

&nbsp;

### Mistake 4

"A successful terraform plan guarantees a safe deployment."

Correction

terraform plan shows proposed changes. Human review, approval, testing, and state management are still essential before applying changes.

&nbsp;

&nbsp;

### Mistake 5

"Terraform modules are only useful for large projects."

Correction

Even small projects benefit from modules through reuse and consistent resource definitions.

&nbsp;

&nbsp;
