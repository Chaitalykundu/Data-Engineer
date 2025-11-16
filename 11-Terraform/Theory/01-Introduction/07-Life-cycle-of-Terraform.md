# Overview

- [Overview](#overview)
- [Lifecycle](#lifecycle)
- [1. Write (Configuration Stage)](#1-write-configuration-stage)
    - [Example](#example)
- [2. Initialize (terraform init)](#2-initialize-terraform-init)
    - [Command:](#command)
- [3. Plan (terraform plan)](#3-plan-terraform-plan)
    - [Command](#command-1)
- [4. Apply (terraform apply)](#4-apply-terraform-apply)
    - [Command](#command-2)
- [5. State (terraform state)](#5-state-terraform-state)
    - [State operations include](#state-operations-include)
- [6. Change (Update Cycle)](#6-change-update-cycle)
- [7. Destroy (terraform destroy)](#7-destroy-terraform-destroy)
    - [Command](#command-3)
    - [Useful for](#useful-for)
- [Terraform Lifecycle (One Diagram)](#terraform-lifecycle-one-diagram)

&nbsp;

&nbsp;

&nbsp;

# Lifecycle

Terraform's lifecycle describes how infrastructure is **created**, **updated**, and **deleted** using Terraform.

It contains 7 major stages:

| Stage       | Purpose                       |
| ----------- | ----------------------------- |
| **Write**   | Create Terraform code         |
| **Init**    | Setup providers/modules       |
| **Plan**    | Preview changes               |
| **Apply**   | Execute changes               |
| **State**   | Track infrastructure          |
| **Change**  | Update infra via code changes |
| **Destroy** | Delete everything             |

&nbsp;

&nbsp;

&nbsp;

# 1. Write (Configuration Stage)

You write Terraform code using `.tf` files:

&nbsp;

### Example

```tf
provider "aws" { ... }
resource "aws_s3_bucket" "demo" { ... }
```

&nbsp;

You define:

- Providers
- Resources
- Variables
- Outputs
- Modules

👉 This is where infrastructure "blueprint" is created.

&nbsp;

&nbsp;

# 2. Initialize (terraform init)

This step initializes your project directory.

&nbsp;

What Terraform does here:

- Downloads provider plugins
- Sets up backend (local or remote state)
- Prepares modules

&nbsp;

### Command:

```bash
terraform init
```

&nbsp;

&nbsp;

# 3. Plan (terraform plan)

Terraform compares:

- Desired state (your .tf code)
- Current real-world state (cloud resources)
- State file

&nbsp;

Then creates an Execution Plan:

- Resources to add
- Resources to update
- Resources to delete

&nbsp;

### Command

```bash
terraform plan
```

👉 No changes happen here — only a preview.

&nbsp;

&nbsp;

# 4. Apply (terraform apply)

Terraform applies the changes.

&nbsp;

What happens:

- Creates infrastructure
- Modifies existing resources
- Deletes old/unused resources
- Updates the state file

&nbsp;

### Command

```bash
terraform apply
```

&nbsp;

&nbsp;

# 5. State (terraform state)

Terraform maintains everything it created in a state file:

- Tracks resource IDs
- Maps Terraform resources to real cloud resources
- Stores metadata

&nbsp;

### State operations include

```bash
terraform state list
terraform state show <resource>
terraform state rm <resource>
terraform state mv <from> <to>
```

👉 State is the heart of Terraform.

&nbsp;

&nbsp;

# 6. Change (Update Cycle)

When you edit your code again, the cycle repeats:

```bash
write → plan → apply
```

&nbsp;

Terraform checks differences and performs the minimum required changes:

- Create new
- Modify existing
- Delete obsolete

&nbsp;

&nbsp;

# 7. Destroy (terraform destroy)

Used to delete ALL resources created by Terraform.

&nbsp;

### Command

```bash
terraform destroy
```

&nbsp;

### Useful for

- Cleaning dev environments
- Avoiding cloud billing
- Fresh infrastructure recreation

&nbsp;

&nbsp;

# Terraform Lifecycle (One Diagram)

```mathematica
Write → Init → Plan → Apply → (State Mgmt) → Change → Destroy
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

&nbsp;

&nbsp;

&nbsp;
