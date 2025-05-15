# Terraform File/Folder Structure

```bash
terraform-project/
├── main.tf             # Main configuration file (resources go here)
├── variables.tf        # Variable declarations
├── terraform.tfvars    # Actual values for the variables
├── outputs.tf          # Output values (e.g., public IPs)
├── provider.tf         # Provider configuration (e.g., AWS)
├── versions.tf         # Terraform and provider version constraints
├── modules/            # (Optional) Custom reusable modules
└── backend.tf          # (Optional) Remote backend configuration
```

&nbsp;

&nbsp;

# Explanation of Each File

| File               | Purpose                                                    |
| ------------------ | ---------------------------------------------------------- |
| `main.tf`          | Primary resource definitions (e.g., EC2, S3, etc.)         |
| `variables.tf`     | Declare variables and types                                |
| `terraform.tfvars` | Define actual values for the variables                     |
| `outputs.tf`       | Define outputs after `terraform apply` (e.g., instance IP) |
| `provider.tf`      | Configure cloud provider (e.g., AWS, Azure, GCP)           |
| `versions.tf`      | Lock the Terraform and provider versions                   |
| `backend.tf`       | Configure remote state (e.g., S3 + DynamoDB)               |
| `modules/`         | Contains reusable infrastructure components                |

&nbsp;

&nbsp;
