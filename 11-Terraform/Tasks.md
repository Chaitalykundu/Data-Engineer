# Lab : Basics

- **Task 1**: Verify Terraform installation and version
- **Task 2**: Initialize Terraform Working Directory: `terraform init`
- **Task 3**: Validating a Configuration: terraform validate
- **Task 4**: Generating a Terraform Plan: terraform plan
- **Task 5**: Applying a Terraform Plan: terraform apply
- **Task 6**: Terraform Destroy: terraform destroy

&nbsp;

&nbsp;

&nbsp;

## Task 1: Verify Terraform installation and version

```bash
terraform --version
```

&nbsp;

## Task 2: Initialize Terraform Working Directory

Copy the code snippet below into the file called `main.tf`

```hcl
resource "random_string" "random" {
  length = 16
}
```

Run the command

```bash
terraform init
```

&nbsp;

## Task 3: Validating a Configuration: terraform validate

The terraform validate command validates the configuration files in your working directory.

```bash
terraform validate
```

&nbsp;

## Task 4: Generating a Terraform Plan

Terraform has a dry run mode where you can preview what Terraform will change without making any actual changes to your infrastructure. This dry run is performed by running a `terraform plan`

```bash
terraform plan
```

&nbsp;

## Task 5: Applying a Terraform Plan

```bash
terraform apply
```

&nbsp;

## Task 6: Terraform Destroy

Check the difference what will appear after destroy

```bash
terraform plan -destroy
```

Then destroy

```bash
terraform destroy
```

&nbsp;

&nbsp;

# Lab: HashiCorp Configuration Language (HCL)

- Task 1: Verify Terraform installation
- Task 2: Update Terraform Configuration to include EC2 instance
- Task 3: Use the Terraform CLI to Get Help
- Task 4: Apply your Configuration
- Task 5: Verify EC2 Server in AWS Management Console

&nbsp;

&nbsp;

&nbsp;

&nbsp;
