# Overview

- [Overview](#overview)
- [HCL](#hcl)
- [Key Characteristics of HCL](#key-characteristics-of-hcl)
- [Where HCL Is Used](#where-hcl-is-used)
- [Basic Syntax](#basic-syntax)

&nbsp;

&nbsp;

&nbsp;

# HCL

HCL (HashiCorp Configuration Language) is a **domain-specific language** created by HashiCorp, primarily used for defining infrastructure as code (IaC).

It's most commonly used in tools like **Terraform**, **Consul**, and **Vault**.

&nbsp;

&nbsp;

# Key Characteristics of HCL

- **Declarative Syntax**: You describe the desired state, not the steps to get there.
- **Human-Readable**: HCL is designed to be both machine- and human-friendly.
- **Extensible**:Can be embedded in JSON, but HCL is more readable.

&nbsp;

&nbsp;

# Where HCL Is Used

| Tool      | Purpose                           |
| --------- | --------------------------------- |
| Terraform | Infrastructure as code (IaC)      |
| Packer    | Creating machine images           |
| Vault     | Secrets management                |
| Consul    | Service discovery & configuration |
| Nomad     | Workload orchestration            |

&nbsp;

&nbsp;

# Basic Syntax

```hcl
<block> <parameters>{
    key1 = value1
    key2 = value2
}

```

&nbsp;
Components:
Blocks: Like provider, resource

Arguments: Key-value pairs inside blocks

Expressions: Refer to other resources (aws_instance.example.id)

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

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
