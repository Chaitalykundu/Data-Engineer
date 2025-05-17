# Overview

- [Overview](#overview)
- [Summary](#summary)
- [Description](#description)
- [What Happens During `terraform init`](#what-happens-during-terraform-init)
- [Example](#example)
  - [Run this in the same directory:](#run-this-in-the-same-directory)
  - [You’ll see output like:](#youll-see-output-like)
- [What Gets Created?](#what-gets-created)
- [When Should You Run terraform init?](#when-should-you-run-terraform-init)
- [Safe to Re-run?](#safe-to-re-run)
- [⚠️ Common Mistakes](#️-common-mistakes)
- [Bonus Flags](#bonus-flags)

&nbsp;

&nbsp;

&nbsp;

# Summary

- `terraform init` is the required first step in any project.

- It installs providers, sets up the backend, and prepares your project to run.

- You must run it anytime you change providers or backends.

&nbsp;

&nbsp;

&nbsp;

# Description

`terraform init` is the first command you run when starting a new or cloned Terraform project.

It initializes the working directory containing Terraform configuration files (`.tf` files) and does things like

&nbsp;

&nbsp;

# What Happens During `terraform init`

| Step                                | Description                                                               |
| ----------------------------------- | ------------------------------------------------------------------------- |
| 🔍 **Backend Initialization**       | Sets up the backend for storing your Terraform state (e.g., local, S3).   |
| 📦 **Provider Installation**        | Downloads required providers (like AWS, Azure, Docker) from the registry. |
| 🔒 **Locks Provider Versions**      | Creates or updates `terraform.lock.hcl` to ensure consistency.            |
| 📁 **Sets Up `.terraform/` Folder** | Stores downloaded plugins and metadata locally.                           |
| 🧹 **Validates Configuration**      | Ensures configuration is well-formed and ready to use.                    |
|                                     |                                                                           |

&nbsp;

&nbsp;

# Example

Given a simple `main.tf` file like:

```hcl
provider "aws" {
  region = "us-east-1"
}
```

&nbsp;

### Run this in the same directory

```bash
terraform init
```

&nbsp;

### You’ll see output like

```bash
Initializing the backend...
Initializing provider plugins...
- Finding hashicorp/aws versions matching ...
- Installing hashicorp/aws v4.x.x...
- Installed hashicorp/aws v4.x.x (signed by HashiCorp)
Terraform has been successfully initialized!
```

&nbsp;

&nbsp;

# What Gets Created?

| File/Folder           | Purpose                                       |
| --------------------- | --------------------------------------------- |
| `.terraform/`         | Stores plugins and provider binaries          |
| `.terraform.lock.hcl` | Locks provider versions for consistent builds |

&nbsp;

&nbsp;

# When Should You Run terraform init?

| Scenario                                     | Run `terraform init`? |
| -------------------------------------------- | --------------------- |
| First time setting up a project              | ✅ Yes                |
| You add or change providers                  | ✅ Yes                |
| You change backends (e.g., from local to S3) | ✅ Yes                |
| You clone someone else’s Terraform repo      | ✅ Yes                |
|                                              |                       |

&nbsp;

&nbsp;

# Safe to Re-run?

Yes — it’s safe to re-run `terraform init` multiple times. It won't destroy any infrastructure. It only affects local setup.

&nbsp;

&nbsp;

# ⚠️ Common Mistakes

| Mistake                                  | Fix                                          |
| ---------------------------------------- | -------------------------------------------- |
| Forgetting to run `init` before `apply`  | Run `terraform init` first                   |
| Changing backend without re-initializing | Use `terraform init -reconfigure`            |
| Missing provider plugins                 | `terraform init` installs them automatically |
|                                          |                                              |

&nbsp;

&nbsp;

# Bonus Flags

| Command                         | Purpose                                                   |
| ------------------------------- | --------------------------------------------------------- |
| `terraform init -upgrade`       | Upgrade provider versions to the latest allowed by config |
| `terraform init -reconfigure`   | Reconfigure backend even if already initialized           |
| `terraform init -backend=false` | Skip backend initialization (useful for testing)          |

&nbsp;
