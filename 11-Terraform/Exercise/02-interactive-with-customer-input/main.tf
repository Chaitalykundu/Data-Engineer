variable "name"{
    description = "Enter a name"
    type = string
    default     = "Terraform User"
}

output "message"{
    value = "Hello ${var.name}, Welcome to terraform world!"
}