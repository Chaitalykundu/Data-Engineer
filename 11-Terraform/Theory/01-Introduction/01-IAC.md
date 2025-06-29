# Overview

- [Overview](#overview)
- [IaC (Infrastructure as Code)](#iac-infrastructure-as-code)
- [Example](#example)
- [Why IaC is Important](#why-iac-is-important)
- [Types of IaC tools](#types-of-iac-tools)
- [Key IaC Concepts](#key-iac-concepts)
- [Use Cases](#use-cases)

&nbsp;

&nbsp;

&nbsp;

# IaC (Infrastructure as Code)

Infrastructure as Code (IaC) is the practice of managing and provisioning infrastructure using machine-readable definition files, rather than manually configuring hardware or using interactive configuration tools.

&nbsp;

In Simple Terms:

Instead of setting up servers, networks, databases, etc., manually through a UI or CLI, you write code (using tools like Terraform, AWS CloudFormation, or Ansible) to define your infrastructure — and that code is then executed to provision and manage the environment.

&nbsp;

&nbsp;

# Example

```hcl
# Terraform example: Create an AWS EC2 instance

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
```

This snippet tells Terraform to create a `t2.micro` EC2 instance using a specific AMI — no clicking around in the AWS UI required.

&nbsp;

&nbsp;

# Why IaC is Important

- **Consistency**: Every environment (dev/staging/prod) is identical.
- **Version Control**: Track changes just like application code using Git.
- **Automation**: Infrastructure can be deployed with a single command.
- **Speed**: Faster provisioning of resources.
- **Reduced Human Error**: Eliminate manual misconfigurations.

&nbsp;

&nbsp;

# Types of IaC tools

| Tool               | Description                         | Category                 |
| ------------------ | ----------------------------------- | ------------------------ |
| **Terraform**      | Cloud-agnostic IaC tool             | Provisioning tool        |
| **CloudFormation** | AWS-specific IaC solution           | Provisioning tool        |
| **Pulumi**         | IaC using general-purpose languages |                          |
| **Ansible**        | Configuration management & IaC      | Configuration management |
| docker             |                                     | Server templating        |
| Vagrant            |                                     | Server templating        |
| Packer             |                                     | Server templating        |
| Saltstack          |                                     | Configuration management |
| puppet             |                                     | Configuration management |

&nbsp;

&nbsp;

# Key IaC Concepts

- **Declarative Syntax**: You describe what you want (e.g., Terraform).
- **Imperative Syntax**: You describe how to get there (e.g., Bash scripts).
- **Idempotency**: Running the same script repeatedly results in the same outcome.

&nbsp;

&nbsp;

# Use Cases

- Spinning up cloud environments
- Configuring networks and firewalls
- Automating CI/CD pipelines
- Creating and destroying test environments dynamically
- Scaling applications automatically

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
