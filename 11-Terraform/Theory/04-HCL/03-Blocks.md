# Overview

- [Overview](#overview)
- [Block](#block)
- [Basic Syntax](#basic-syntax)
  - [Explanation](#explanation)
- [Common HCL Block Types](#common-hcl-block-types)
- [Example: resource Block](#example-resource-block)
  - [Breakdown](#breakdown)

&nbsp;

&nbsp;

&nbsp;

# Block

A `block` is a container for configuration in HCL.

It defines a piece of infrastructure or logic and contains **arguments**, **attributes**, or **nested blocks**.

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
- **Label(s)**: Identifiers to name or scope the block
- **Body**: Contains arguments and possibly nested blocks

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

# Example: resource Block

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
