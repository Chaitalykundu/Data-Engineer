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

# a real project example, such as

1. Deploying a static website on S3?
2. Setting up a VPC + EC2 instance?
3. Using Terraform modules?

&nbsp;

&nbsp;

# HCL `Argument` Practice Sheet (10 Tasks)

| #   | Challenge               | Task Description                                                                                                                                 |
| --- | ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| 1   | **Basic Argument**      | Use `local_file` to create `hello.txt` with content `"Hello from HCL!"`                                                                          |
| 2   | **String Variable**     | Define a variable called `user_name` and use it in `local_file` to write `"Hello, <user_name>"`                                                  |
| 3   | **Number Argument**     | Create a variable called `file_count = 3` and use `count` to create 3 files named `file-0.txt`, `file-1.txt`, etc.                               |
| 4   | **Boolean Conditional** | Create a variable `create_file = true`. Use it with a ternary: if true, create a file; if false, skip it using `count = var.create_file ? 1 : 0` |
| 5   | **Map Argument**        | Define a map variable with keys `env = "dev"` and `region = "us-east-1"`. Output each value using `output` blocks                                |
| 6   | **List Argument**       | Create a variable `names = ["Alice", "Bob", "Charlie"]`. Output a comma-separated list using `join(", ", var.names)`                             |
| 7   | **Interpolation**       | Use interpolation to name a file `hello-<user>.txt` using a `var.user` variable                                                                  |
| 8   | **Nested Map (Tags)**   | Create a resource with a `tags` argument as a nested map like: `{ Environment = "Dev", Owner = "Admin" }`                                        |
| 9   | **Function Argument**   | Use `upper(var.env)` to output the environment name in uppercase                                                                                 |
| 10  | **Dynamic Expression**  | Use a `count` expression that creates a file only if `var.env == "dev"` (`count = var.env == "dev" ? 1 : 0`)                                     |

&nbsp;

&nbsp;

&nbsp;

&nbsp;
