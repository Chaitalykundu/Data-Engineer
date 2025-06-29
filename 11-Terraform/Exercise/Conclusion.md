# Basic and static output file

```hcl
output "message" {
  value = "Hello Terraform!"
}
```

&nbsp;

&nbsp;

# User input

```hcl
variable "name" {
  description = "Enter a name"
  type        = string
  default     = "Terraform User"
}

output "message" {
  value = "Hello ${var.name}, Welcome to terraform world!"
}
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
