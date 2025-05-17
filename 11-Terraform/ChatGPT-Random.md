# 2. Variables and Outputs

| Concept     | What You’ll Learn                            |
| ----------- | -------------------------------------------- |
| Input vars  | Accept user-defined inputs                   |
| Output vars | Return useful values (like IP addresses)     |
| Locals      | Define temporary values in code              |
| Type system | Use `string`, `number`, `bool`, `list`, etc. |

&nbsp;

&nbsp;

&nbsp;

# 3. Resources and Providers

- Understand what a provider is (e.g., AWS, Azure, Google, Docker)
- Use a provider block (e.g., provider "aws" {})
- Create and manage resources (like EC2, S3, etc.)

### Example with AWS S3

```h
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-123"
  acl    = "private"
}
```

&nbsp;

&nbsp;

&nbsp;

# ✅ 4. Data Sources

Use data sources to fetch info from existing infrastructure:

```hcl
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}
```

# ✅ 5. State Management

| Concept                 | Description                 |
| ----------------------- | --------------------------- |
| `.tfstate` file         | Stores infrastructure state |
| `terraform state list`  | List managed resources      |
| Remote state (e.g., S3) | Share state across teams    |
| State locking           | Prevent concurrent changes  |

&nbsp;

&nbsp;

&nbsp;

# ✅ 6. Modules

- Break large projects into reusable pieces:
- Create your own modules
- Use public modules from the Terraform Registry

```h
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = "my-vpc"
  cidr = "10.0.0.0/16"
  azs  = ["us-east-1a", "us-east-1b", "us-east-1c"]
  ...
}
```

&nbsp;

&nbsp;

&nbsp;

# ✅ 7. Provisioners and Connection Blocks

Use provisioners for tasks like installing software on a VM:

```h
provisioner "remote-exec" {
  inline = [
    "sudo apt update",
    "sudo apt install nginx -y"
  ]
}
```

&nbsp;

&nbsp;

&nbsp;

# ✅ 8. Workspaces

- Isolate environments (dev/stage/prod)
- Manage multiple states from the same configuration

```bash
terraform workspace new dev
terraform workspace select dev
```

&nbsp;

&nbsp;

&nbsp;

# ✅ 9. Best Practices & Git Integration

| Practice                  | Why It Matters                       |
| ------------------------- | ------------------------------------ |
| Use `.tfvars` files       | Manage different environments        |
| Use `terraform fmt`       | Keep code clean and readable         |
| Lock provider versions    | Avoid breaking changes               |
| Use `.terraform.lock.hcl` | Ensure reproducible builds           |
| Use Git                   | Track changes and collaborate safely |

&nbsp;

&nbsp;

&nbsp;

# ✅ 10. Bonus: Terraform Cloud / Backend

- Store state files in the cloud
- Collaborate with team members
- Use remote execution and state locking

&nbsp;

&nbsp;

&nbsp;

# 🚀 Final Tips

- Start with simple AWS or Docker projects
- Practice creating and destroying resources
- Read documentation: <https://registry.terraform.io>
- Watch for costs when using real cloud resources
