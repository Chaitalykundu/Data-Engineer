# Overview

- [Overview](#overview)
- [Summary](#summary)
- [Description](#description)
- [What It Does](#what-it-does)
- [Example](#example)
  - [You might see](#you-might-see)
  - [Output Breakdown](#output-breakdown)
- [Typical Use Cases](#typical-use-cases)
- [Flags You Can Use](#flags-you-can-use)
  - [Example: Save and Apply Later](#example-save-and-apply-later)
- [Safe to Re-run?](#safe-to-re-run)
- [⚠️ Common Mistakes](#️-common-mistakes)

&nbsp;

&nbsp;

&nbsp;

# Summary

- `terraform plan` is safe — it doesn’t make any changes.

- It shows a preview of infrastructure changes.

- It’s a must-use command before `terraform apply`.

- Combine it with `-out` to review and apply exactly what you intend.

&nbsp;

&nbsp;

&nbsp;

# Description

The `terraform plan` command creates an execution plan, showing what Terraform will do (create, update, delete) without making any actual changes to real infrastructure.

Think of it like a dry run or a preview of changes.

&nbsp;

&nbsp;

# What It Does

| Action                              | Description                                                                  |
| ----------------------------------- | ---------------------------------------------------------------------------- |
| 🧠 **Reads `.tf` files**            | Parses your configuration files (resources, variables, outputs, etc.)        |
| 🗂️ **Loads the current state**      | Compares your desired state with the actual infrastructure (from `.tfstate`) |
| 📊 **Displays the planned changes** | Tells you what Terraform will add/change/destroy                             |
| 🛑 **Does NOT make changes**        | Safe to run anytime before `terraform apply`                                 |
|                                     |                                                                              |

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

### You might see

```bash
Terraform will perform the following actions:

  # null_resource.example will be created
  + resource "null_resource" "example" {
      + id = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

```

&nbsp;

## Output Breakdown

| Symbol | Meaning                        |
| ------ | ------------------------------ |
| `+`    | Resource will be **created**   |
| `-`    | Resource will be **destroyed** |
| `~`    | Resource will be **modified**  |
| `<=`   | Resource will be **replaced**  |

&nbsp;

&nbsp;

# Typical Use Cases

| Use Case                        | Why Use `terraform plan`?                |
| ------------------------------- | ---------------------------------------- |
| Before `apply`                  | Confirm changes before making them       |
| Reviewing changes in CI/CD      | Safe automation with human-readable plan |
| Debugging configuration changes | Quickly catch what your edits will do    |
| Collaborating in teams          | Share the plan output for peer review    |

&nbsp;

&nbsp;

# Flags You Can Use

| Command Option           | What It Does                           |
| ------------------------ | -------------------------------------- |
| `-out=plan.tfplan`       | Save the plan to a file for later use  |
| `-var="key=value"`       | Pass variables inline                  |
| `-var-file="dev.tfvars"` | Load variables from a file             |
| `-target=resource.name`  | Limit the plan to a specific resource  |
| `-refresh=false`         | Skip state refresh (useful in testing) |

&nbsp;

## Example: Save and Apply Later

```bash
terraform plan -out=tfplan.binary
terraform apply tfplan.binary
```

This ensures only the changes you reviewed are applied — useful in production pipelines.

&nbsp;

&nbsp;

# Safe to Re-run?

Yes — `terraform plan` is safe — it doesn’t make any changes.

&nbsp;

&nbsp;

# ⚠️ Common Mistakes

| Mistake                          | Solution                                        |
| -------------------------------- | ----------------------------------------------- |
| Running `apply` without planning | Always run `plan` first in serious environments |
| Ignoring plan output             | Review carefully to avoid accidental deletes    |
| Editing resources directly       | Use code, not the console or dashboard          |
|                                  |                                                 |

&nbsp;

&nbsp;

&nbsp;
