# Overview

- [Overview](#overview)
- [IaC (Infrastructure as Code)](#iac-infrastructure-as-code)
- [Example](#example)
- [Why IaC is Important](#why-iac-is-important)
- [Tools for IaC](#tools-for-iac)
- [Key IaC Concepts](#key-iac-concepts)

&nbsp;

&nbsp;

&nbsp;

# IaC (Infrastructure as Code)

Infrastructure as Code (IaC) is the practice of managing and provisioning infrastructure using machine-readable definition files, rather than manually configuring hardware or using interactive configuration tools.

&nbsp;

&nbsp;

# Example

```hcl
<!-- # Terraform example: Create an AWS EC2 instance -->

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
```

This snippet tells Terraform to create a `t2.micro` EC2 instance using a specific AMI — no clicking around in the AWS UI required.

&nbsp;

&nbsp;

# Why IaC is Important

- Consistency: Every environment (dev/staging/prod) is identical.
- Version Control: Track changes just like application code using Git.
- Automation: Infrastructure can be deployed with a single command.
- Speed: Faster provisioning of resources.
- Reduced Human Error: Eliminate manual misconfigurations.

&nbsp;

&nbsp;

# Tools for IaC

| Tool               | Description                         |
| ------------------ | ----------------------------------- |
| **Terraform**      | Cloud-agnostic IaC tool             |
| **CloudFormation** | AWS-specific IaC solution           |
| **Pulumi**         | IaC using general-purpose languages |
| **Ansible**        | Configuration management & IaC      |

&nbsp;

&nbsp;

# Key IaC Concepts

- **Declarative Syntax**: You describe what you want (e.g., Terraform).
- **Imperative Syntax**: You describe how to get there (e.g., Bash scripts).
- **Idempotency**: Running the same script repeatedly results in the same outcome.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
