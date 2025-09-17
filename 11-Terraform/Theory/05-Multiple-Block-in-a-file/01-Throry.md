# Overview

- [Overview](#overview)
- [Multiple block](#multiple-block)
  - [Multiple `Output` block in a file](#multiple-output-block-in-a-file)
  - [Multiple different blocks in a file](#multiple-different-blocks-in-a-file)
    - [Explanation](#explanation)
- [Multiple file in a directory](#multiple-file-in-a-directory)

&nbsp;

&nbsp;

&nbsp;

# Multiple block

In Terraform, you can have multiple blocks inside one `.tf` file. Terraform doesn’t care whether you split `resources`/`variables`/`providers` across many files or keep them in one file — all `.tf` files in the same folder are loaded together.

&nbsp;

Terraform will read all `.tf` files in a directory as one configuration.
So you can either:

- Keep everything in one big main.tf, or
- Split into `provider.tf`, `variables.tf`, `resources.tf`, `outputs.tf` → Terraform will still process them together.

&nbsp;

&nbsp;

### Multiple `Output` block in a file

```tf
output "firstOutput"{
    value = "This is first output block"
}

output "secondOutput"{
    value = "This is second output block"
}

output "thirdOutput"{
    value = "This is third output block"
}
```

&nbsp;

&nbsp;

&nbsp;

### Multiple different blocks in a file

```tf
# ------------------------------
# Provider Block
# ------------------------------
provider "aws" {
  region = "us-east-1"
}

# ------------------------------
# Variable Block
# ------------------------------
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# ------------------------------
# Resource Block
# ------------------------------
resource "aws_instance" "my_ec2" {
  ami           = "ami-1234567890abcdef0"
  instance_type = var.instance_type

  tags = {
    Name = "MyServer"
  }
}

# ------------------------------
# Output Block
# ------------------------------
output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}
```

&nbsp;

#### Explanation

- `provider` block → Configures the provider (AWS in this case).
- `variable` block → Declares a variable that can be reused in resources.
- `resource` block → Creates an actual cloud resource (like an EC2 instance).
- `output` block → Prints values (like instance IPs) after terraform apply.

&nbsp;

&nbsp;

# Multiple file in a directory

If we create multiple files in one terraform directory, it will read all files as one configuration and will configure in alphabetic way.
