# Overview

- [Overview](#overview)
- [Variables](#variables)
- [Why We Use Variables](#why-we-use-variables)
- [Syntax](#syntax)
- [You access a variable with](#you-access-a-variable-with)
- [Example](#example)
  - [Declare variable](#declare-variable)
  - [Use variable](#use-variable)
  - [Assign value](#assign-value)
- [Default Values](#default-values)
- [Sensitive Variables](#sensitive-variables)
- [Best Practices for using Terraform Variables](#best-practices-for-using-terraform-variables)

&nbsp;

&nbsp;

&nbsp;

# Variables

Variables in Terraform are the input parameters you can define and reuse across your configuration.

Input Variables are placeholders in Terraform that allow you to pass values from outside your code.

Values can come from `defaults`, `.tfvars`, `CLI`, or `environment variables`

&nbsp;

&nbsp;

# Why We Use Variables

They make Terraform configuration:

- Reusable
- Clean
- Dynamic
- Environment-friendly (dev, qa, prod)
- Secure (don’t hardcode passwords!)

&nbsp;

Instead of writing this:

```
username = "CHAITALY"
password = "12345"
```

&nbsp;

You write:

```
username = var.snowflake_user
password = var.snowflake_password
```

And values are stored safely in a `.tfvars` file or environment variables.

&nbsp;

&nbsp;

# Syntax

```hcl
variable "variable_name" {
  description = "Explanation of what this variable does"
  type        = datatype
  default     = "default_value"  # optional
}
```

&nbsp;

&nbsp;

# You access a variable with

```hcl
${var.variable_name}
```

&nbsp;

&nbsp;

# Example

## Declare variable

```tf
variable "snowflake_user" {
  description = "Snowflake username"
  type        = string
}
```

&nbsp;

## Use variable

```tf
username = var.snowflake_user
```

&nbsp;

## Assign value

in `.tfvars` file

```tf
snowflake_user = "CHAITALY"
```

Note: We can assign this is `default` parameter, or in `environment variable` or in `CLI`.

&nbsp;

&nbsp;

# Default Values

If you don’t pass a value, Terraform uses the default:

```tf
variable "region" {
  type    = string
  default = "ap-south-1"
}
```

&nbsp;

&nbsp;

# Sensitive Variables

Terraform hides these values from logs.

Used for passwords, keys, tokens:

```hcl
variable "snowflake_password" {
  type      = string
  sensitive = true
}
```

&nbsp;

&nbsp;

# Best Practices for using Terraform Variables

To ensure your Terraform configurations are maintainable and scalable, here are some best practices for using variables:

1. **Use descriptive names**: Use meaningful names for variables (e.g., instance_type, ami_id, region) to make your code easier to understand.

2. **Define default values wisely**: While defaults are good to have but don't overuse them. Always explicitly define critical variables like region or instance type in the environment.

3. **Avoid hardcoding values**: Don't put the value of resource blocks directly, use variables which can be reused and help you to make environment flexible.

4. **Leverage `.tfvars` files**: Use `.tfvars` files for managing environment-specific configurations. This approach keeps your configurations clean and helps maintain consistency across environments.

5. **Use locals**: For computed or derived values which aren't required to be input by user and are used multiple times in configuration, use locals.

&nbsp;

&nbsp;

&nbsp;
