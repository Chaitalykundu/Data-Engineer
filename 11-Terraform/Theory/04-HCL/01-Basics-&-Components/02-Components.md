# Overview

- [Overview](#overview)
- [Components](#components)
- [1. Blocks](#1-blocks)
  - [Example](#example)
- [2. Arguments](#2-arguments)
- [Expressions](#expressions)
  - [Expressions Can include](#expressions-can-include)
- [Functions](#functions)
- [Variables](#variables)
  - [Types](#types)
- [Outputs](#outputs)
- [Providers](#providers)
- [Modules](#modules)
- [Meta-Arguments](#meta-arguments)
- [Comments](#comments)
- [HCL also supports these data types](#hcl-also-supports-these-data-types)

&nbsp;

&nbsp;

&nbsp;

# Components

In HCL (HashiCorp Configuration Language), the configuration is structured using several key components. These components help to define infrastructure, variables, resources, outputs, and more in a human-readable and declarative way.

&nbsp;

&nbsp;

| Component         | Description                                                                     | Purpose                         | Example                                                                           |
| ----------------- | ------------------------------------------------------------------------------- | ------------------------------- | --------------------------------------------------------------------------------- |
| **Block**         | The basic unit of configuration (e.g., `resource`, `provider`, `variable`)      | Main structural unit            | `resource`, `provider`, `module`                                                  |
| **Argument**      | Key-value pairs inside a block                                                  | Key-value config inside a block | `region = "us-west-1"`                                                            |
| **Expression**    | Values computed from other values or variables                                  | Compute dynamic values          | `"${var.name}-instance"`                                                          |
| **Function**      | Built-in helpers used within expressions                                        | Process data                    | `join(",", var.list)`                                                             |
| **Variable**      | Inputs defined by the user to make config dynamic                               | Input values                    | `variable "region" { default = "us-east-1" }`                                     |
| **Output**        | Values returned after `terraform apply`; used for reference or visibility       | Export results                  | `output "instance_id" { value = aws_instance.example.id }`                        |
| **Provider**      |                                                                                 | Define external services        | `provider "aws"`                                                                  |
| **Module**        |                                                                                 | Reusable configuration          | `module "vpc"`                                                                    |
| **Meta-Argument** |                                                                                 | Special logic controls          | `count`, `depends_on`, etc.                                                       |
| **Comments**      | Notes for readability (`#` or `//` for single-line, `/* ... */` for multi-line) |
| **Attribute**     | Synonym for argument; refers to the properties inside a block                   |                                 | `ami = "ami-0abc123"`                                                             |
| **Data Source**   | Reads info from providers (read-only)                                           |                                 | `data "aws_ami" "ubuntu" { ... }`                                                 |
| **Provisioner**   | Executes scripts or commands during resource creation                           |                                 | `provisioner "local-exec" { command = "echo hello" }`                             |
| **Label**         | Optional identifiers used in blocks for naming and scoping                      |                                 | In resource "aws_instance" "example" → "aws_instance" is type, "example" is label |

&nbsp;

&nbsp;

# 1. Blocks

Blocks are **containers** for configuration. The most common blocks include:

- **provider**: Defines the provider (e.g., AWS, Azure, Local)
- **resource**: Declares infrastructure resources
- **variable**: Declares input values
- **output**: Declares output values
- **module**: Calls reusable Terraform modules
- **locals**: Defines local variables for reuse within the configuration
- **data**
- **settings**

&nbsp;

## Example

```hcl
resource "local_file" "example" {
  filename = "hello.txt"
  content  = "Hello, world!"
}
```

block = `resource`

&nbsp;

&nbsp;

# 2. Arguments

Arguments are **key-value pairs** defined within blocks.

```hcl
filename = "hello.txt"
content  = "Hello, world!"
```

Each argument sets a specific property of the resource.

&nbsp;

&nbsp;

# Expressions

Expressions are used to **assign values dynamically**.

```hcl
content = "Hello, ${var.name}!"
# or
content = "Instance ID is ${aws_instance.web.id}"
```

### Expressions Can include

- Strings
- String interpolation ("${...}")
- Numbers
- Booleans
- Lists and maps
- Interpolation syntax (${})
- Arithmetic (+, -, \*, /)
- Logical operators (&&, ||)
- Conditionals (condition ? true_val : false_val)

&nbsp;

&nbsp;

# Functions

Functions manipulate values in expressions.

```hcl
lower("HELLO")           # => "hello"
join(", ", ["a", "b"])   # => "a, b"
length(["a", "b", "c"])  # => 3
```

&nbsp;

&nbsp;

# Variables

Define values that can be reused.

```hcl
variable "region" {
  type    = string
  default = "us-east-1"
}

output "show_region" {
  value = var.region
}
```

&nbsp;

### Types

- string
- number
- bool
- list
- map
- object etc.

&nbsp;

&nbsp;

# Outputs

Expose information from the configuration.

```hcl
output "instance_ip" {
  value = aws_instance.web.public_ip
}
```

&nbsp;

&nbsp;

# Providers

Define which **cloud/platform/service** Terraform will talk to.

```hcl
provider "aws" {
  region = var.region
}
```

&nbsp;

&nbsp;

# Modules

Group of `.tf` files used as reusable units.

Used via module block:

```hcl
module "vpc" {
  source = "./vpc-module"
  cidr_block = "10.0.0.0/16"
}
```

&nbsp;

&nbsp;

# Meta-Arguments

Special keywords like:

- **count:** create multiple copies
- **for_each**: iterate over a map or set
- **depends_on**: define dependencies
- **lifecycle:** manage create/update/delete behavior

&nbsp;

```hcl
resource "aws_instance" "web" {
  count = 2
  ...
}
```

&nbsp;

&nbsp;

# Comments

Used for documentation.

```hcl
# This is a comment
// This is also a comment
/* Multi-line
   comment */
```

&nbsp;

&nbsp;

# HCL also supports these data types

- **String**: "hello"
- **Number**: 42
- **Boolean**: true, false
- **List**: ["a", "b", "c"]
- **Map/Object**:

&nbsp;

```hcl
{
  name = "John"
  age  = 30
}
```

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
