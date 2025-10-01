# Overview

- [Overview](#overview)
- [Identifiers](#identifiers)
- [Rules for Identifiers](#rules-for-identifiers)
- [Where Identifiers Are Used](#where-identifiers-are-used)
  - [Resource Names](#resource-names)
    - [Usage](#usage)
  - [Variable Names](#variable-names)
    - [Usage:](#usage-1)
  - [Output Names](#output-names)
    - [Usage after apply:](#usage-after-apply)
  - [Module Names](#module-names)
    - [Usage:](#usage-2)

&nbsp;

&nbsp;

&nbsp;

# Identifiers

An identifier is the name you give to things in HCL like variables, resources, outputs, etc.

It’s how Terraform recognizes and references those items in your configuration.

Argument names, block type names, and the names of most Terraform-specific constructs like resources, input variables, etc. are all identifiers.

Identifiers can contain letters, digits, underscores (\_), and hyphens (-). The first character of an identifier must not be a digit, to avoid ambiguity with literal numbers.

&nbsp;

&nbsp;

# Rules for Identifiers

1. Allowed characters → **letters** (`a-z`, `A-Z`), **digits** (`0-9`), and **underscores** (`_`).

   - Example: my_instance, db1_config, variable_x

2. Must not start with a digit.

   - ✅ server1 is valid
   - ❌ 1server is invalid

3. **Case-sensitive** → myVariable and myvariable are different.

4. No spaces or special characters like `-`, `.`, `*`, `#`.

   - ❌ my-variable → Not valid as identifier (but valid as a label string)

&nbsp;

&nbsp;

# Where Identifiers Are Used

## Resource Names

```hcl
resource "aws_instance" "my_ec2" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
}
```

&nbsp;

- **aws_instance** → first label (type, not an identifier you choose)
- **my_ec2** → identifier, chosen name for referencing this resource

&nbsp;

### Usage

```md
aws_instance.my_ec2.id
```

&nbsp;

&nbsp;

## Variable Names

```hcl
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
```

- instance_type → identifier

&nbsp;

### Usage

```md
var.instance_type
```

&nbsp;

&nbsp;

## Output Names

```hcl
output "instance_ip" {
  value = aws_instance.my_ec2.public_ip
}
```

- instance_ip → identifier

&nbsp;

### Usage after apply

```md
terraform output instance_ip
```

&nbsp;

&nbsp;

## Module Names

```hcl
module "network" {
  source = "./network"
  vpc_id = "vpc-1234"
}
```

- network → identifier

&nbsp;

### Usage

```md
module.network.vpc_id
```

&nbsp;
