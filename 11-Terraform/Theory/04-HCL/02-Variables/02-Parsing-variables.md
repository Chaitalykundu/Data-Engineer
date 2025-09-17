# Overview

- [Overview](#overview)
- [Parsing variables](#parsing-variables)
  - [Option 1: Default in `.tf` file](#option-1-default-in-tf-file)
    - [Example](#example)
  - [Option 2: `.tfvars` file](#option-2-tfvars-file)
    - [Example](#example-1)
  - [Option 3: Command Line](#option-3-command-line)
  - [Option 4: Environment Variables](#option-4-environment-variables)

&nbsp;

&nbsp;

&nbsp;

# Parsing variables

Variables can be parsed in 2 ways

1. Default in `.tf` file
2. `.tfvars` file
3. Command Line
4. Environment Variables

&nbsp;

&nbsp;

## Option 1: Default in `.tf` file

Defined directly in the variable block

### Example

```hcl
variable "enable_monitoring" {
  type    = bool
  default = true
}
```

&nbsp;

&nbsp;

## Option 2: `.tfvars` file

### Example

```hcl
region          = "us-west-2"
instance_count  = 3
enable_monitoring = false
```

&nbsp;

&nbsp;

## Option 3: Command Line

```bash
terraform apply -var="region=us-west-2"
```

&nbsp;

&nbsp;

## Option 4: Environment Variables

```bash
export TF_VAR_region="us-west-2"
```

&nbsp;

&nbsp;
