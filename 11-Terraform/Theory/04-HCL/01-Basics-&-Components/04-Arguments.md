# Overview

- [Overview](#overview)
- [Block](#block)
- [Basic Syntax](#basic-syntax)
  - [Explanation](#explanation)
- [Example: Arguments Inside a `resource` Block](#example-arguments-inside-a-resource-block)
  - [Breakdown](#breakdown)
- [Where Are Arguments Used?](#where-are-arguments-used)
- [Types of Values for Arguments](#types-of-values-for-arguments)
- [Best Practices for Arguments](#best-practices-for-arguments)

&nbsp;

&nbsp;

&nbsp;

# Block

In HCL (HashiCorp Configuration Language), an `argument` is a **key-value** pair that sets a property inside a block.

Arguments define how a block should behave or be configured.

&nbsp;

&nbsp;

# Basic Syntax

```hcl
<argument_name> = <value>
```

&nbsp;

### Explanation

- **argument_name** → the name of the configuration property (like `ami`, `region`, `filename`)
- **value** → can be a string, number, boolean, list, map, variable, or expression

&nbsp;

&nbsp;

# Example: Arguments Inside a `resource` Block

```hcl
resource "aws_instance" "web" {
  ami           = "ami-0abc123"
  instance_type = "t2.micro"
  tags = {
    Name = "WebServer"
  }
}
```

&nbsp;

### Breakdown

| Argument        | Value           | Description                               |
| --------------- | --------------- | ----------------------------------------- |
| `ami`           | `"ami-0abc123"` | Specifies the AMI ID for the EC2 instance |
| `instance_type` | `"t2.micro"`    | Sets the instance type                    |
| `tags`          | Map             | Key-value pair to tag the instance        |

&nbsp;

&nbsp;

# Where Are Arguments Used?

| Block Type | Argument Example             | Description               |
| ---------- | ---------------------------- | ------------------------- |
| `provider` | `region = "us-east-1"`       | Sets AWS region           |
| `resource` | `instance_type = "t2.micro"` | Defines EC2 instance type |
| `variable` | `default = "dev"`            | Assigns default value     |
| `output`   | `value = var.name`           | Defines what to output    |

&nbsp;

&nbsp;

# Types of Values for Arguments

| Type                    | Example                          |
| ----------------------- | -------------------------------- |
| **String**              | `"hello"`                        |
| **Number**              | `42`, `3.14`                     |
| **Boolean**             | `true`, `false`                  |
| **List**                | `["dev", "test", "prod"]`        |
| **Map**                 | `{ Name = "test", Env = "dev" }` |
| **Variable**            | `var.region`                     |
| **Function/Expression** | `join(", ", var.list)`           |

&nbsp;

&nbsp;

# Best Practices for Arguments

- Use indentation for nested maps and blocks.
- Prefer variables instead of hardcoding values.
- Format code with `terraform fmt` to maintain clarity.
