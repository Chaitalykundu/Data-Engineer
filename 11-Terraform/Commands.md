# Basic command

| Command              | What it does                      |
| -------------------- | --------------------------------- |
| `terraform init`     | Initializes the working directory |
| `terraform plan`     | Shows what Terraform will do      |
| `terraform apply`    | Applies the configuration         |
| `terraform destroy`  | Tears down infrastructure         |
| `terraform fmt`      | Formats your code                 |
| `terraform validate` | Checks for syntax errors          |
| `terraform output`   | Shows the values of outputs       |
| `terraform state`    | Interact with the state file      |

&nbsp;

&nbsp;

| Command                         | Purpose                                                   |
| ------------------------------- | --------------------------------------------------------- |
| `terraform init -upgrade`       | Upgrade provider versions to the latest allowed by config |
| `terraform init -reconfigure`   | Reconfigure backend even if already initialized           |
| `terraform init -backend=false` | Skip backend initialization (useful for testing)          |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

| Command Option           | What It Does                           |
| ------------------------ | -------------------------------------- |
| `-out=plan.tfplan`       | Save the plan to a file for later use  |
| `-var="key=value"`       | Pass variables inline                  |
| `-var-file="dev.tfvars"` | Load variables from a file             |
| `-target=resource.name`  | Limit the plan to a specific resource  |
| `-refresh=false`         | Skip state refresh (useful in testing) |

&nbsp;

&nbsp;
