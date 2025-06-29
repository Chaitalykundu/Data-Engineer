# Overview

- [Overview](#overview)
- [Study material](#study-material)
- [Practice](#practice)
- [Terraform Day-wise Roadmap (15 Days)](#terraform-day-wise-roadmap-15-days)
- [Bonus Topics (After Day 15)](#bonus-topics-after-day-15)
- [HCL Learning Roadmap (Daywise)](#hcl-learning-roadmap-daywise)

&nbsp;

&nbsp;

# Study material

[Udemy source](https://persistent.udemy.com/course/terraform-for-the-absolute-beginners/learn/lecture/28359870#overview)

[Terraform official doc](https://developer.hashicorp.com/terraform/language)

[HCL official doc](https://developer.hashicorp.com/tutorials)

[Provider list](https://registry.terraform.io/providers/hashicorp)

[Local Provider](https://registry.terraform.io/providers/hashicorp/local/latest/docs)

&nbsp;

&nbsp;

# Practice

[Lab Practice](https://learn.kodekloud.com/user/courses/udemy-labs-terraform-for-beginners/module/15ad6d59-4e42-40a6-bc23-1d518cebd065/lesson/ef74c64b-1c49-455d-935c-be899526db1e)

&nbsp;

&nbsp;

&nbsp;

# Terraform Day-wise Roadmap (15 Days)

| Day                                         | Topics                                                                                                                             | Practice                                                                     | Status |
| ------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ------ |
| Day 1: Introduction to Terraform            | What is IaC (Infrastructure as Code)?                                                                                              | Install Terraform and write a basic main.tf that outputs "Hello, Terraform!" | Done   |
|                                             | Why Terraform? Use cases and benefits.                                                                                             |                                                                              |        |
|                                             | Terraform vs other IaC tools (e.g., CloudFormation, Pulumi)                                                                        |                                                                              |        |
|                                             | Install Terraform on your machine                                                                                                  |                                                                              | Done   |
|                                             | Initialize a simple project                                                                                                        |                                                                              | Done   |
| Day 2: Terraform Core Concepts              | Providers                                                                                                                          | Use a provider (aws) and create an S3 bucket                                 |        |
|                                             | Resources                                                                                                                          |                                                                              |        |
|                                             | Data sources                                                                                                                       |                                                                              |        |
|                                             | Input variables and output values                                                                                                  |                                                                              |        |
| Day 3: Variables and Outputs                | `terraform.tfvars`, default values                                                                                                 | Create EC2 instance with variables for region, instance type, and key pair   |        |
|                                             | Sensitive variables                                                                                                                |                                                                              |        |
|                                             | Output referencing                                                                                                                 |                                                                              |        |
| Day 4: State Management                     | What is Terraform state?                                                                                                           | Explore .tfstate file and use state commands                                 |        |
|                                             | Local vs Remote state                                                                                                              |                                                                              |        |
|                                             | terraform.tfstate and terraform.tfstate.backup                                                                                     |                                                                              |        |
|                                             | terraform state list, show, rm                                                                                                     |                                                                              |        |
| Day 5: Backends and Remote State            | S3 Backend (for AWS)                                                                                                               | Configure S3 + DynamoDB backend for state storage                            |        |
|                                             | DynamoDB for state locking                                                                                                         |                                                                              |
|                                             | Benefits of remote state                                                                                                           |                                                                              |
| Day 6: Resource Dependencies                | Implicit and explicit dependencies                                                                                                 | Create a VPC and a subnet that depends on it                                 |        |
|                                             | depends_on                                                                                                                         |                                                                              |
|                                             | Managing resource order                                                                                                            |                                                                              |
| Day 7: Data Sources                         | What are data sources?                                                                                                             | Fetch latest AMI using data "aws_ami"                                        |        |
|                                             | Difference between resource and data                                                                                               |                                                                              |
| Day 8: Modules - Basics                     | What is a module?                                                                                                                  | Convert existing resources into a custom reusable module                     |        |
|                                             | Root module vs child module                                                                                                        |                                                                              |
|                                             | Module structure                                                                                                                   |                                                                              |
| Day 9: Modules - Using Public Modules       | Use modules from the Terraform Registry                                                                                            | Use the official terraform-aws-vpc module                                    |        |
|                                             | Pass variables to modules                                                                                                          |                                                                              |
| Day 10: Terraform CLI and Workflow          | init, plan, apply, destroy, fmt, validate                                                                                          | Practice CLI commands in a simple project                                    |        |
|                                             | Workspace basics                                                                                                                   |                                                                              |
|                                             | .terraform directory explained                                                                                                     |                                                                              |
| Day 11: Terraform Cloud (Optional Day)      | What is Terraform Cloud?                                                                                                           | Set up a free Terraform Cloud account and push a config to it                |        |
|                                             | Workspaces in Cloud                                                                                                                |                                                                              |
|                                             | Version control integration (GitHub)                                                                                               |                                                                              |
| Day 12: Loops and Conditionals              | count, for_each                                                                                                                    | Create multiple EC2 instances using count or for_each                        |        |
|                                             | Conditional expressions                                                                                                            |                                                                              |
| Day 13: Dynamic Blocks & Complex Structures | Dynamic blocks (dynamic {})                                                                                                        | Create multiple IAM policies with dynamic blocks                             |        |
|                                             | Working with maps and lists                                                                                                        |                                                                              |
| Day 14: Security and Best Practices         | Secrets management (avoid hardcoding)                                                                                              | Use AWS IAM roles securely and run tflint                                    |        |
|                                             | IAM roles and permissions for Terraform                                                                                            |                                                                              |
|                                             | Linting and formatting (tflint, terraform fmt)                                                                                     |                                                                              |
| Day 15: Mini Project & GitHub Integration   | Create a simple 3-tier architecture: <br>VPC, Subnets, EC2, RDS <br>Output all important details <br> Use modules and remote state |                                                                              |
|                                             | Push code to GitHub                                                                                                                |                                                                              |
|                                             | Document the repo with README                                                                                                      |                                                                              |

&nbsp;

&nbsp;

&nbsp;

# Bonus Topics (After Day 15)

- Terraform with CI/CD (GitHub Actions, GitLab)
- Terraform + Ansible
- Terraform for large-scale environments
- Sentinel Policies (for Terraform Cloud)
- Using Terraform with Azure/GCP

&nbsp;

&nbsp;

&nbsp;

# HCL Learning Roadmap (Daywise)

| Day                                             | Topics                                               | Practice                                                                | Status |
| ----------------------------------------------- | ---------------------------------------------------- | ----------------------------------------------------------------------- | ------ |
| **Day 1: HCL Basics**                           | What is HCL? Where is it used?                       | Write a basic `main.tf` using `local_file` to create a file             |        |
|                                                 | HCL syntax: blocks, arguments, attributes            | Use `terraform plan` to check syntax                                    |        |
|                                                 | Literal values: string, number, boolean              | Define variables with different data types                              |        |
| **Day 2: Data Types in HCL**                    | Lists, maps, and tuples                              | Create a variable with list/map and print using `output`                |        |
|                                                 | Object and nested object types                       | Define a variable with `type = object({ name = string, age = number })` |        |
| **Day 3: Expressions & Interpolation**          | `${}` syntax and variable substitution               | Interpolate variable in filename/content                                |        |
|                                                 | Arithmetic and logical expressions                   | Use expressions in `count` or `output` blocks                           |        |
| **Day 4: Functions in HCL**                     | Built-in functions: `join()`, `lookup()`, `length()` | Use `join()` to concatenate a list into a string                        |        |
|                                                 | Conditional expressions                              | Use ternary (`? :`) to toggle between values                            |        |
| **Day 5: Locals and Outputs**                   | Define and use `locals` block                        | Reuse local values in resource definitions                              |        |
|                                                 | Use `output` block effectively                       | Output interpolated/local/variable values                               |        |
| **Day 6: Meta-Arguments in HCL**                | `count`, `for_each`, `depends_on`, `lifecycle`       | Use `count` to create multiple resources                                |        |
|                                                 | `lifecycle` block properties                         | Add `prevent_destroy = true` to a resource                              |        |
| **Day 7: Advanced Structures & Best Practices** | Dynamic blocks                                       | Use `dynamic` to loop through tag map                                   |        |
|                                                 | Nesting blocks and complex expressions               | Create a complex `resource` using variables and locals                  |        |
|                                                 | HCL formatting and validation                        | Use `terraform fmt` and `validate`                                      |        |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
