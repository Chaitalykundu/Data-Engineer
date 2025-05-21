# Overview

- [Overview](#overview)
- [Summary](#summary)
- [Description](#description)
- [What It Does](#what-it-does)
- [Example](#example)
  - [Run:](#run)
  - [Output](#output)
- [Usage Patterns](#usage-patterns)
  - [Apply Immediately](#apply-immediately)
  - [Apply a Saved Plan (Safer for CI/CD)](#apply-a-saved-plan-safer-for-cicd)
  - [Apply Without Prompt](#apply-without-prompt)
- [What Happens After?](#what-happens-after)
- [⚠️ Common Mistakes](#️-common-mistakes)
- [Best Practices](#best-practices)
- [Bonus Flags](#bonus-flags)

&nbsp;

&nbsp;

&nbsp;

# Summary

- `terraform apply` provisions resources based on your `.tf` config.

- It shows a plan before making changes (unless you pass a pre-generated plan).

- It's the execution phase of Terraform.

- Use with caution and never in production without a plan review.

&nbsp;

&nbsp;

&nbsp;

# Description

`terraform apply` is the command that actually provisions the infrastructure resources described in `.tf` configuration files.

It takes the execution plan (created either internally or via terraform plan`) and applies the changes to reach the desired state.

&nbsp;

&nbsp;

# What It Does

| Action                             | Description                                                                  |
| ---------------------------------- | ---------------------------------------------------------------------------- |
| Step                               | Description                                                                  |
| ---------------------------------- | ---------------------------------------------------------------------------- |
| 🔍 **Reads Configuration**         | Terraform reads `.tf` files in the working directory                         |
| 🔄 **Compares with Current State** | It compares what exists (in the state file) with what should exist (in code) |
| 📊 **Prompts with a Plan**         | If no `-auto-approve`, Terraform shows a plan and asks for confirmation      |
| ⚙️ **Provisions Infrastructure**   | Creates, modifies, or destroys resources to match the desired state          |
| 📝 **Updates the State File**      | The `.tfstate` file is updated to reflect new reality                        |
|                                    |                                                                              |

&nbsp;

&nbsp;

# Example

Given a simple `main.tf` file like:

```hcl
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello, Terraform!"
  }
}


```

&nbsp;

## Run

```bash
terraform apply
```

&nbsp;

## Output

```bash
Terraform will perform the following actions:

  # null_resource.example will be created
  + resource "null_resource" "example" {
      + id = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value:

```

Type yes to proceed.

&nbsp;

# Usage Patterns

## Apply Immediately

```bash
terraform apply
```

Runs the plan and asks for confirmation.

&nbsp;

## Apply a Saved Plan (Safer for CI/CD)

```bash
terraform plan -out=tfplan
terraform apply tfplan
```

Ensures that only the reviewed and saved plan is applied.

&nbsp;

## Apply Without Prompt

```bash
terraform apply -auto-approve
```

⚠️ Dangerous in production! Skips the confirmation step.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# What Happens After?

- Resources are created/updated/destroyed.
- `.terraform/terraform.tfstate` is updated with the current state.
- Terraform records all resource metadata for future plans.

&nbsp;

&nbsp;

# ⚠️ Common Mistakes

| Mistake                                  | Solution                          |
| ---------------------------------------- | --------------------------------- |
| Skipping the plan step                   | Always run `terraform plan` first |
| Using `-auto-approve` blindly            | Use only in automation pipelines  |
| Forgetting to commit `.tfstate` (remote) | Use remote state (e.g., S3)       |
| Running from the wrong directory         | Always run from your root module  |
|                                          |                                   |

&nbsp;

&nbsp;

# Best Practices

- Use remote backends to store state safely
- Always review the plan before applying
- Use version control for .tf files
- Lock versions of providers
- Automate with pipelines (CI/CD)

&nbsp;

&nbsp;

# Bonus Flags

| Flag                     | Description                                  |
| ------------------------ | -------------------------------------------- |
| `-var="key=value"`       | Set a variable inline                        |
| `-var-file="dev.tfvars"` | Load variables from a file                   |
| `-auto-approve`          | Skip the "yes" prompt                        |
| `-lock=false`            | Disable state file locking (not recommended) |

&nbsp;
