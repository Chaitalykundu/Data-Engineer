variable "name"{
    description = "Enter a name"
    type = string
 #   default = "Siri"
}

output "message"{
    value = "Hello ${var.name}, Welcome to terraform"
}