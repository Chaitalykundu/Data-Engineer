# Overview

- [Overview](#overview)
- [Local Provider](#local-provider)
- [Key Points](#key-points)
- [How to use this provider](#how-to-use-this-provider)
- [Resources](#resources)
- [Summary](#summary)
- [Example](#example)

&nbsp;

&nbsp;

&nbsp;

# Local Provider

The **Local** Provider is a Terraform plugin that allows you to **manage local system resources**, rather than cloud resources like AWS, Azure, or GCP.

It comes in **built-in** with Terraform, so you don’t need to install anything extra for basic usage.

&nbsp;

&nbsp;

# Key Points

| Feature              | Description                                                                                                                           |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| **Name**             | `local`                                                                                                                               |
| **Purpose**          | To create, manipulate, or reference files and directories on your **local machine** or execution environment.                         |
| **Common Resources** | `local_file`, `local_directory`, `local_sensitive_file`, etc.                                                                         |
| **Use Cases**        | - Generate configuration files<br>- Write text to files<br>- Create folders for deployment scripts<br>- Store local temporary outputs |

&nbsp;

&nbsp;

# How to use this provider

To install this provider, copy and paste this code into your Terraform configuration. Then, run `terraform init`.

&nbsp;

```hcl
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.3"
    }
  }
}

provider "local" {
  # Configuration options
}
```

&nbsp;

&nbsp;

# Resources

- `local_file`
- `local_sensitive_file`

&nbsp;

&nbsp;

# Summary

- The local provider is a Terraform provider for managing local files, directories, or other local system resources.

- It is mostly used for generating configuration files, creating folders, or writing temporary files needed by your Terraform workflow.

- Resource type like `local_file` comes from the local provider.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

we have made use of the `local_sensitive_file` resource type to mask the contents of the file from the execution plan.

&nbsp;

# Example

if we don't want the content of the file to show up in the execution plan at all.

```hcl
resource "local_sensitive_file" "games" {
  filename     = "/root/favorite-games"
  content  = "FIFA 21"
  # sensitive_content = "FIFA 21"
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
