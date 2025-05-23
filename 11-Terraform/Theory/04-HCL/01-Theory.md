# Overview

- [Overview](#overview)
- [HCL](#hcl)
- [Key Characteristics of HCL](#key-characteristics-of-hcl)
- [Where HCL Is Used](#where-hcl-is-used)
- [Basic Syntax](#basic-syntax)
  - [Note](#note)
- [Example](#example)
- [Steps to Run the Terraform Script](#steps-to-run-the-terraform-script)
  - [Step 1: Write terraform configuration file](#step-1-write-terraform-configuration-file)
  - [Step 2: Initialize Terraform (downloads the provider plugin)](#step-2-initialize-terraform-downloads-the-provider-plugin)
  - [Step 3: See what will be done](#step-3-see-what-will-be-done)
  - [Step 4: Apply the changes](#step-4-apply-the-changes)

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
<block_name> <resource_type> <resource_name>{
    key1 = value1
    key2 = value2
}

```

&nbsp;

### Note

`resource_type` has 2 block. Before `_` it's called provider, After `_` it's called resource.

&nbsp;

&nbsp;

# Example

```hcl
resource "local_file" "tea"{
    filename = "./tea_file.txt"
    content = "We love tea!"
}



resource "local_file" "pet"{
    filename = "./pet_file.txt"
    content = "I don't like per at all"
}


```

&nbsp;

&nbsp;

# Steps to Run the Terraform Script

### Step 1: Write terraform configuration file

> write code in `main.tf` or any other file

### Step 2: Initialize Terraform (downloads the provider plugin)

> run `terraform init`

### Step 3: See what will be done

> run `terraform plan`

### Step 4: Apply the changes

> run `terraform apply`

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
