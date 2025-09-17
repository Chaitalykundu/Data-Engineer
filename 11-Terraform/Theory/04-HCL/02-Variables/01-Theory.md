# Overview

- [Overview](#overview)
- [Variables](#variables)
- [Syntax](#syntax)
- [You access a variable with:](#you-access-a-variable-with)

&nbsp;

&nbsp;

&nbsp;

# Variables

Variables in Terraform are the input parameters you can define and reuse across your configuration. They make your `.tf` files dynamic, reusable, and configurable instead of hardcoding values.

Values can come from `defaults`, `.tfvars`, `CLI`, or `environment variables`

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

# You access a variable with:

```hcl
${var.variable_name}
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;
