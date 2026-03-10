# Overview

- [Overview](#overview)
- [Official page](#official-page)
- [Full Syntax](#full-syntax)
- [Main blocks](#main-blocks)
  - [`terraform { required_providers { ... } }` Block](#terraform--required_providers-----block)
    - [Code](#code)
    - [Explanation](#explanation)
    - [Purpose](#purpose)
  - [`provider "snowflake" { }` Block](#provider-snowflake---block)
    - [Code](#code-1)
    - [Explanation](#explanation-1)
    - [Example](#example)
    - [Purpose](#purpose-1)
- [How Both Blocks Work Together](#how-both-blocks-work-together)
  - [Step 1 → Required provider](#step-1--required-provider)
  - [Step 2 → Provider config](#step-2--provider-config)
  - [Step 3 → Your resources](#step-3--your-resources)
- [In Simple Words](#in-simple-words)
- [Example of a Complete Setup](#example-of-a-complete-setup)

&nbsp;

&nbsp;

&nbsp;

# Official page

[Official page of Snowflake provider](https://registry.terraform.io/providers/snowflakedb/snowflake/latest) : <https://registry.terraform.io/providers/snowflakedb/snowflake/latest>

&nbsp;

&nbsp;

# Full Syntax

```tf
terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
      version = "0.92.0"
    }
  }
}

provider "snowflake" {
  # Configuration options
}
```

&nbsp;

&nbsp;

# Main blocks

This code has two main blocks:

```tf
terraform { required_providers { ... } }
```

and

```tf
provider "snowflake" { ... }
```

&nbsp;

&nbsp;

## `terraform { required_providers { ... } }` Block

This block tells Terraform which provider plugin to download and use

&nbsp;

### Code

```hcl
terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
      version = "0.92.0"
    }
  }
}
```

&nbsp;

### Explanation

| Component                            | Meaning                                                 |
| ------------------------------------ | ------------------------------------------------------- |
| **required_providers**               | List of providers needed for this project               |
| **snowflake**                        | Name of the provider Terraform will use                 |
| **source = "snowflakedb/snowflake"** | The provider’s official location on Terraform Registry  |
| **version = "0.92.0"**               | Exact version of the Snowflake provider you want to use |
|                                      |                                                         |

&nbsp;

### Purpose

When you run `terraform init`, Terraform will download the Snowflake provider version `0.92.0` from the registry.

This ensures consistent and stable deployments.

&nbsp;

&nbsp;

## `provider "snowflake" { }` Block

This block tells Terraform how to connect to Snowflake.

&nbsp;

### Code

```tf
provider "snowflake" {
  # Configuration options
}
```

&nbsp;

### Explanation

This is where you normally add:

- username
- password / private key
- account
- role
- warehouse

&nbsp;

### Example

```tf
provider "snowflake" {
  account   = "xy12345.ap-south-1"
  username  = "ADMIN"
  password  = "YourPassword"
  role      = "ACCOUNTADMIN"
}
```

&nbsp;

&nbsp;

### Purpose

This config allows Terraform to authenticate to Snowflake so it can:

- create databases
- manage schemas
- assign roles
- create warehouses
- automate RBAC etc.

&nbsp;

&nbsp;

# How Both Blocks Work Together

### Step 1 → Required provider

Terraform knows which provider and version to install.

&nbsp;

### Step 2 → Provider config

Terraform knows how to connect to that provider.

&nbsp;

### Step 3 → Your resources

Then you can write resources like:

```tf
resource "snowflake_database" "db" {
  name = "MY_DATABASE"
}
```

&nbsp;

&nbsp;

# In Simple Words

`required_providers` = Download this plugin (Snowflake 0.92.0)

`provider "snowflake"` = Use this Snowflake account with these credentials

Resources = Create objects in Snowflake

&nbsp;

&nbsp;

# Example of a Complete Setup

```hcl
terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "0.92.0"
    }
  }
}

provider "snowflake" {
  account   = "myaccount.aws"
  username  = "ADMIN"
  password  = "pass12345"
  role      = "ACCOUNTADMIN"
}

resource "snowflake_database" "demo_db" {
  name = "DEMO_DB"
}
```

&nbsp;

&nbsp;
