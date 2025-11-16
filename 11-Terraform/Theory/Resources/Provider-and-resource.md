# Overview

- [Overview](#overview)
- [Provider vs Resource](#provider-vs-resource)
- [Diagram: Provider → Resource → Output](#diagram-provider--resource--output)
- [Provider vs Resource](#provider-vs-resource-1)

&nbsp;

&nbsp;

&nbsp;

# Provider vs Resource

| Provider                                 | Resource                                 |
| ---------------------------------------- | ---------------------------------------- |
| Plugin to connect Terraform to a service | Actual infrastructure to create          |
| One provider → many resources            | Each resource creates/manages one object |
| Example: `provider "aws"`                | Example: `resource "aws_s3_bucket"`      |
|                                          |                                          |

&nbsp;

&nbsp;

# Diagram: Provider → Resource → Output

```arduino
 Terraform Code
      │
      ▼
 provider "local"
      │
      ▼
 resource "local_file"
      │
      ▼
Creates file on your system
```

&nbsp;

&nbsp;

&nbsp;

# Provider vs Resource

| Provider                                 | Resource                                 |
| ---------------------------------------- | ---------------------------------------- |
| Plugin to connect Terraform to a service | Actual infrastructure to create          |
| One provider → many resources            | Each resource creates/manages one object |
| Example: `provider "aws"`                | Example: `resource "aws_s3_bucket"`      |
|                                          |                                          |
