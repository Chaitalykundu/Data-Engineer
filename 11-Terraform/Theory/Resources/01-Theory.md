# Overview

- [Overview](#overview)
- [Resource](#resource)
- [Resource Block Syntax](#resource-block-syntax)
- [Providers and Resources Relationship](#providers-and-resources-relationship)
  - [Diagram](#diagram)
- [Provider vs Resource](#provider-vs-resource)

&nbsp;

&nbsp;

&nbsp;

# Resource

A resource represents a piece of infrastructure that Terraform will create or manage.

&nbsp;

&nbsp;

| Resource                  | Description                 |
| ------------------------- | --------------------------- |
| `aws_instance`            | EC2 virtual machine         |
| `aws_s3_bucket`           | S3 storage bucket           |
| `snowflake_database`      | Snowflake database          |
| `local_file`              | A file on your local system |
| `azurerm_storage_account` | Azure storage               |

&nbsp;

&nbsp;

# Resource Block Syntax

```tf
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-demo"
  acl    = "private"
}
```

&nbsp;

Meaning:

- aws_s3_bucket → Resource Type
- my_bucket → Resource Name
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

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Provider vs Resource

| Provider                                 | Resource                                 |
| ---------------------------------------- | ---------------------------------------- |
| Plugin to connect Terraform to a service | Actual infrastructure to create          |
| One provider → many resources            | Each resource creates/manages one object |
| Example: `provider "aws"`                | Example: `resource "aws_s3_bucket"`      |
|                                          |                                          |

&nbsp;

&nbsp;
