# Overview

- [Overview](#overview)
- [Resource](#resource)
- [Types of Resources](#types-of-resources)
  - [1. Managed resources](#1-managed-resources)
  - [2. Data sources](#2-data-sources)
  - [3. Meta-resources](#3-meta-resources)
- [Some Resources in Terraform](#some-resources-in-terraform)
- [Resource Block Syntax](#resource-block-syntax)
  - [Explanation](#explanation)
- [Example](#example)
  - [Explanation](#explanation-1)
- [Providers and Resources Relationship](#providers-and-resources-relationship)
  - [Diagram](#diagram)
- [Why Terraform Uses Resources](#why-terraform-uses-resources)
- [Provider vs Resource](#provider-vs-resource)

&nbsp;

&nbsp;

&nbsp;

# Resource

A resource in Terraform represents a piece of infrastructure that Terraform creates, updates, or deletes in your cloud or tool.

&nbsp;

&nbsp;

# Types of Resources

There are `three` high-level types:

&nbsp;

## 1. Managed resources

Created/updated/destroyed by Terraform
(E.g., AWS EC2, Snowflake roles, etc.)

&nbsp;

## 2. Data sources

Read-only lookup of existing resources
(E.g., lookup existing Snowflake warehouse)

&nbsp;

## 3. Meta-resources

Used for logic, not cloud infrastructure
(E.g., `null_resource`, `local_file` for configs)

&nbsp;

&nbsp;

# Some Resources in Terraform

- A Snowflake database
- An AWS EC2 instance
- A Kubernetes deployment
- A local file
- A GitHub repository
- A Snowflake warehouse, schema, role, user, etc.

&nbsp;

| Resource                  | Real Object Created         |
| ------------------------- | --------------------------- |
| `aws_instance`            | EC2 virtual machine         |
| `aws_s3_bucket`           | S3 storage bucket           |
| `local_file`              | A file on your local system |
| `azurerm_storage_account` | Azure storage               |
| `snowflake_database`      | A Snowflake DB              |
| `snowflake_schema`        | Schema                      |
| `snowflake_role`          | Role                        |
| `github_repository`       | GitHub repo                 |
|                           |                             |

&nbsp;

&nbsp;

# Resource Block Syntax

```tf
resource "<PROVIDER>_<RESOURCE_TYPE>" "<RESOURCE_NAME>" {
  # configuration arguments
}
```

&nbsp;

## Explanation

| Part            | Meaning                                                                    |
| --------------- | -------------------------------------------------------------------------- |
| `resource`      | Terraform keyword                                                          |
| `provider`      | Which provider it belongs to (aws, snowflake, google, local, github, etc.) |
| `resource_type` | Which exact resource you want to create                                    |
| `resource_name` | Your logical name used inside Terraform                                    |
| `{...}`         | Configuration/attributes                                                   |

&nbsp;

&nbsp;

# Example

```tf
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-demo"
  acl    = "private"
}
```

&nbsp;

## Explanation

- `aws_s3_bucket` → `aws` = provider , `s3_bucket` = Resource Type
- `my_bucket` → Resource Name
- Inside block → Configuration

&nbsp;

&nbsp;

# Providers and Resources Relationship

A provider is like: **Who you are talking to**

A resource is: **What you are creating**

&nbsp;

&nbsp;

### Diagram

```scss
Terraform → Provider (AWS) → Creates Resources (S3, EC2, VPC)
Terraform → Provider (Snowflake) → Creates Resources (Database, User, Role)
Terraform → Provider (local) → Creates Resources (Files)
```

&nbsp;

&nbsp;

# Why Terraform Uses Resources

Resources allow Terraform to:

- Know what you want to create
- Compare your desired infrastructure with real infrastructure
- Detect changes
- Apply only needed updates
- Track everything in the Terraform state file

So resources are the building blocks of Infrastructure as Code.

&nbsp;

&nbsp;

# Provider vs Resource

| Provider                                 | Resource                                       |
| ---------------------------------------- | ---------------------------------------------- |
| Plugin to connect Terraform to a service | Actual infrastructure to create                |
| One provider → many resources            | Each resource creates/manages one object       |
| Example: `provider "aws"`                | Example: `resource "aws_s3_bucket" "my_bucket` |
|                                          |                                                |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
