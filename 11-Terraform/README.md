# Study material

[Terraform](https://developer.hashicorp.com/terraform/language)

[HCL](https://developer.hashicorp.com/tutorials)

&nbsp;

&nbsp;

&nbsp;

# Terraform Day-wise Roadmap (15 Days)

| Day                                         | Topics                                                                                                                             | Practice                                                                     |
| ------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| Day 1: Introduction to Terraform            | What is IaC (Infrastructure as Code)?                                                                                              | Install Terraform and write a basic main.tf that outputs "Hello, Terraform!" |
|                                             | Why Terraform? Use cases and benefits.                                                                                             |
|                                             | Terraform vs other IaC tools (e.g., CloudFormation, Pulumi)                                                                        |
|                                             | Install Terraform on your machine                                                                                                  |
|                                             | Initialize a simple project                                                                                                        |
| Day 2: Terraform Core Concepts              | Providers                                                                                                                          | Use a provider (aws) and create an S3 bucket                                 |
|                                             | Resources                                                                                                                          |
|                                             | Data sources                                                                                                                       |
|                                             | Input variables and output values                                                                                                  |
| Day 3: Variables and Outputs                | `terraform.tfvars`, default values                                                                                                 | Create EC2 instance with variables for region, instance type, and key pair   |
|                                             | Sensitive variables                                                                                                                |
|                                             | Output referencing                                                                                                                 |
| Day 4: State Management                     | What is Terraform state?                                                                                                           | Explore .tfstate file and use state commands                                 |
|                                             | Local vs Remote state                                                                                                              |
|                                             | terraform.tfstate and terraform.tfstate.backup                                                                                     |
|                                             | terraform state list, show, rm                                                                                                     |
| Day 5: Backends and Remote State            | S3 Backend (for AWS)                                                                                                               | Configure S3 + DynamoDB backend for state storage                            |
|                                             | DynamoDB for state locking                                                                                                         |
|                                             | Benefits of remote state                                                                                                           |
| Day 6: Resource Dependencies                | Implicit and explicit dependencies                                                                                                 | Create a VPC and a subnet that depends on it                                 |
|                                             | depends_on                                                                                                                         |
|                                             | Managing resource order                                                                                                            |
| Day 7: Data Sources                         | What are data sources?                                                                                                             | Fetch latest AMI using data "aws_ami"                                        |
|                                             | Difference between resource and data                                                                                               |
| Day 8: Modules - Basics                     | What is a module?                                                                                                                  | Convert existing resources into a custom reusable module                     |
|                                             | Root module vs child module                                                                                                        |
|                                             | Module structure                                                                                                                   |
| Day 9: Modules - Using Public Modules       | Use modules from the Terraform Registry                                                                                            | Use the official terraform-aws-vpc module                                    |
|                                             | Pass variables to modules                                                                                                          |
| Day 10: Terraform CLI and Workflow          | init, plan, apply, destroy, fmt, validate                                                                                          | Practice CLI commands in a simple project                                    |
|                                             | Workspace basics                                                                                                                   |
|                                             | .terraform directory explained                                                                                                     |
| Day 11: Terraform Cloud (Optional Day)      | What is Terraform Cloud?                                                                                                           | Set up a free Terraform Cloud account and push a config to it                |
|                                             | Workspaces in Cloud                                                                                                                |
|                                             | Version control integration (GitHub)                                                                                               |
| Day 12: Loops and Conditionals              | count, for_each                                                                                                                    | Create multiple EC2 instances using count or for_each                        |
|                                             | Conditional expressions                                                                                                            |
| Day 13: Dynamic Blocks & Complex Structures | Dynamic blocks (dynamic {})                                                                                                        | Create multiple IAM policies with dynamic blocks                             |
|                                             | Working with maps and lists                                                                                                        |
| Day 14: Security and Best Practices         | Secrets management (avoid hardcoding)                                                                                              | Use AWS IAM roles securely and run tflint                                    |
|                                             | IAM roles and permissions for Terraform                                                                                            |
|                                             | Linting and formatting (tflint, terraform fmt)                                                                                     |
| Day 15: Mini Project & GitHub Integration   | Create a simple 3-tier architecture: <br>VPC, Subnets, EC2, RDS <br>Output all important details <br> Use modules and remote state |
|                                             | Push code to GitHub                                                                                                                |
|                                             | Document the repo with README                                                                                                      |

&nbsp;

&nbsp;

&nbsp;

# Bonus Topics (After Day 15)

- Terraform with CI/CD (GitHub Actions, GitLab)
- Terraform + Ansible
- Terragrunt for large-scale environments
- Sentinel Policies (for Terraform Cloud)
- Using Terraform with Azure/GCP
