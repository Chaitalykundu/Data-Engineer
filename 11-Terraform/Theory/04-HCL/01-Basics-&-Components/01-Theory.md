# Overview

- [Overview](#overview)
- [HCL](#hcl)
- [Key Characteristics of HCL](#key-characteristics-of-hcl)
- [Where HCL Is Used](#where-hcl-is-used)
- [Basic Syntax](#basic-syntax)
  - [Note](#note)
- [Example](#example)
  - [Explanation](#explanation)
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

HCL is designed to strike a balance between a generic configuration language like JSON or YAML and a high-level scripting language.

HCL is the primary language used for writing Terraform configuration files, thus making it a fundamental part of defining and providing data center infrastructure in a descriptive manner.

&nbsp;

&nbsp;

# Key Characteristics of HCL

- **Declarative Syntax**: You describe the desired state, not the steps to get there.
- **Human-Readable**: HCL is designed to be both machine- and human-friendly.
- **Extensible**: Can be embedded in JSON, but HCL is more readable.

&nbsp;

&nbsp;

# Where HCL Is Used

| Tool          | Purpose                        | How HCL is Used                                           |
| ------------- | ------------------------------ | --------------------------------------------------------- |
| **Terraform** | Infrastructure as Code (IaC)   | Define cloud resources (VMs, networks, DBs, etc.)         |
| **Vault**     | Secrets Management             | Define secrets engines, policies, auth methods            |
| **Consul**    | Service Discovery & Networking | Configure services, ACLs, intentions                      |
| **Packer**    | VM/Image Builder               | Define image build workflows (AWS AMI, Azure Image, etc.) |
| **Nomad**     | Workload orchestration         |                                                           |
|               |                                |                                                           |

&nbsp;

&nbsp;

# Basic Syntax

```hcl
<block> <identifier> {
    parameters / arguments.....
}
```

&nbsp;

### Note

- **Block** can be different type.
- No of **Identifier** depends on block type.
- **Argument** can be one or more.

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
    content = "I don't like pets at all"
}

output "LocalFileTea"{
    value = "Local File tea is created"
}
```

&nbsp;

### Explanation

Here,

- block_type = **resource** & **output**
- For **resource** block
  - resource_type = **local_file**
    - provider = **local**
    - resource = **file**
  - resource_name = **pet** & **tea**
- For **output** block
  - Parameter = **LocalFileTea**

&nbsp;

| Element           | Example              | Description                                 |
| ----------------- | -------------------- | ------------------------------------------- |
| **block_type**    | `resource`, `output` | Main structure in Terraform                 |
| **resource_type** | `local_file`         | Comes from the provider (`local`)           |
| **resource_name** | `tea`, `pet`         | Unique identifier for each resource         |
| **provider**      | `local`              | Manages local system resources (files here) |
| **output name**   | `LocalFileTea`       | Label for Terraform output                  |

&nbsp;

| Part                                  | Description                                                                                                        |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| `resource "local_file" "pet"`         | Declares a resource named `pet` of type `local_file`.                                                              |
| `filename = "./pet_file.txt"`         | Specifies the path and name of the file to be created. In this case, it's `pet_file.txt` in the current directory. |
| `content = "I don't like per at all"` | This is the **text content** that will be written into the file.                                                   |
| `output "LocalFileTea"`               | Output Prints a message after apply. Shows: **Local File tea is created**                                          |

&nbsp;

&nbsp;

# Steps to Run the Terraform Script

### Step 1: Write terraform configuration file

> write code in `main.tf` or any other file

&nbsp;

### Step 2: Initialize Terraform (downloads the provider plugin)

> run `terraform init`

&nbsp;

### Step 3: See what will be done

> run `terraform plan`

&nbsp;

### Step 4: Apply the changes

> run `terraform apply`

&nbsp;

&nbsp;
