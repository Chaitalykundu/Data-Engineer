# Overview

- [Overview](#overview)
- [Terraform](#terraform)
- [Definition (Simple)](#definition-simple)
- [Why Terraform](#why-terraform)
- [How Terraform Works (Overview)](#how-terraform-works-overview)
- [Key Concept](#key-concept)
- [Example Use Cases](#example-use-cases)
- [Why Use Terraform?](#why-use-terraform)
- [Declarative Configuration Language](#declarative-configuration-language)

&nbsp;

&nbsp;

&nbsp;

# Terraform

Terraform is an open-source Infrastructure as Code (IaC) tool developed by **HashiCorp** that lets you define, provision, and manage infrastructure using a declarative configuration language called **HCL** (HashiCorp Configuration Language).

&nbsp;

&nbsp;

# Definition (Simple)

Terraform allows you to write code to automate the creation of infrastructure like:

- Servers (e.g., EC2)
- Databases (e.g., RDS)
- Networking (e.g., VPCs, Subnets, Load Balancers)
- Cloud services (AWS, Azure, GCP, etc.)

Instead of manually clicking through a cloud provider's UI, you define infrastructure in `.tf` files and Terraform builds it for you.

&nbsp;

&nbsp;

# Why Terraform

Terraform is one of the most popular Infrastructure as Code (IaC) tools because it's cloud-agnostic, declarative, and highly scalable.

It helps automate the setup, modification, and destruction of your infrastructure in a consistent and repeatable way.

&nbsp;

&nbsp;

# How Terraform Works (Overview)

1. You Write Configuration in `.tf` files

   ```hcl
   resource "aws_instance" "my_ec2" {
     ami           = "ami-123456"
     instance_type = "t2.micro"
   }
   ```

2. Terraform CLI Commands:

   - `terraform init` → initialize project
   - `terraform plan` → preview what will happen
   - `terraform apply` → apply changes
   - `terraform destroy` → delete all resources

3. Terraform Builds the Infrastructure based on your definitions

&nbsp;

&nbsp;

# Key Concept

| Concept        | Description                                          |
| -------------- | ---------------------------------------------------- |
| **Provider**   | Cloud platform or service (e.g., AWS, Azure, GCP)    |
| **Resource**   | The object being created (e.g., EC2 instance, VPC)   |
| **Variable**   | User-defined values to customize configurations      |
| **State File** | `.tfstate` stores the current state of your infra    |
| **Module**     | A reusable group of Terraform files (like functions) |

&nbsp;

&nbsp;

# Example Use Cases

- Set up a production-ready AWS environment
- Deploy a Kubernetes cluster
- Manage multi-cloud infrastructure
- Create staging/dev/test environments
- Automate infrastructure in CI/CD pipelines

&nbsp;

&nbsp;

# Why Use Terraform?

- Automates infrastructure deployment
- Ensures consistency across environments
- Cloud-agnostic (works with 100+ providers)
- Integrates with CI/CD & Git
- Improves team collaboration and versioning

&nbsp;

&nbsp;

# Declarative Configuration Language

A Declarative Configuration Language is a type of language used to define what the desired state of a system should be, rather than how to achieve that state.

&nbsp;

&nbsp;
