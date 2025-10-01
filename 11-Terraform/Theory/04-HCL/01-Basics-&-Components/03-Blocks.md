# Overview

- [Overview](#overview)
- [Block](#block)
- [Basic Syntax](#basic-syntax)
  - [Explanation](#explanation)
- [Common HCL Block Types](#common-hcl-block-types)
- [Resource Block](#resource-block)
  - [Breakdown](#breakdown)
- [Provider Block](#provider-block)
- [Variable Block](#variable-block)
- [Output Block](#output-block)
- [Module Block](#module-block)
- [Data Block](#data-block)
- [Nested Blocks](#nested-blocks)

&nbsp;

&nbsp;

&nbsp;

# Block

A `block` is a container and the basic unit of configuration in HCL.

Each block serves a specific purpose, like defining a **provider**, **resource**, or **module**.

It defines a piece of infrastructure or logic and contains **arguments**, **attributes**, or **nested blocks**.

Blocks are enclosed in curly braces `{ }` and can contain nested blocks.

&nbsp;

&nbsp;

# Basic Syntax

```hcl
<block_type> "<label1>" "<label2>" {
  argument1 = "value"
  argument2 = "value"

  nested_block {
    key = "value"
  }
}
```

&nbsp;

### Explanation

- **Block Type**: Type of entity (e.g., resource, provider, variable)
- **Label(s)**: Identifiers to name or scope the block (label1 = `resource_type`, label2 = `resource_name` / `identifier`)
- **Body**: Inside `{}`, contains arguments and nested blocks.

&nbsp;

&nbsp;

# Common HCL Block Types

| Block Type  | Purpose                                       | Example                                                |
| ----------- | --------------------------------------------- | ------------------------------------------------------ |
| `resource`  | Defines infrastructure to create              | `resource "aws_instance" "web" { ... }`                |
| `provider`  | Configures a provider like AWS, Azure, etc.   | `provider "aws" { region = "us-east-1" }`              |
| `variable`  | Declares input variables                      | `variable "region" { default = "us-east-1" }`          |
| `output`    | Declares outputs after apply                  | `output "instance_id" { value = aws_instance.web.id }` |
| `module`    | Reuses another set of Terraform configs       | `module "vpc" { source = "./modules/vpc" }`            |
| `data`      | Fetches read-only information from a provider | `data "aws_ami" "ubuntu" { ... }`                      |
| `locals`    | Declares local variables                      | `locals { name = "test" }`                             |
| `terraform` | Configures Terraform-specific settings        | `terraform { required_providers { ... } }`             |

&nbsp;

&nbsp;

# Resource Block

Defines infrastructure (cloud resources) to create .

```hcl
resource "aws_instance" "web" {
  ami           = "ami-123456"
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2"
  }

  lifecycle {
    prevent_destroy = true
  }
}
```

&nbsp;

### Breakdown

| Part             | Meaning                                                   |
| ---------------- | --------------------------------------------------------- |
| `resource`       | Block type: creating infrastructure                       |
| `"aws_instance"` | Type of resource (EC2 instance)                           |
| `"web"`          | Label: the name for referencing in Terraform              |
| `{ ... }`        | Block body with attributes and nested block (`lifecycle`) |
| `lifecycle`      | Nested block that controls destroy behavior               |

&nbsp;

&nbsp;

# Provider Block

Defines which cloud provider Terraform should use.

```hcl
provider "aws" {
  region = "us-east-1"
}
```

&nbsp;

&nbsp;

# Variable Block

Declares input variables.

```hcl
variable "username" {
  description = "Enter your name"
  type        = string
  default     = ""
}
```

&nbsp;

&nbsp;

# Output Block

Exports values after deployment.

```hcl
output "message" {
  value = "Hello World!"
}
```

&nbsp;

&nbsp;

# Module Block

Reuses configurations from another folder or registry.

```hcl
module "network" {
  source = "./network"
  vpc_id = "vpc-12345"
}
```

&nbsp;

&nbsp;

# Data Block

Fetches existing resources (read-only).

```hcl
data "aws_ami" "latest" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Nested Blocks

Blocks can contain other blocks. Example inside a resource:

```hcl
resource "aws_security_group" "web" {
  name        = "web-sg"
  description = "Allow HTTP and SSH"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;
