variable username{
    description =  "Enter your name"
    type = string
   # default  = "unnamed"
}

variable "surname"{
    description =  "Enter your surname"
    type = string
}

variable "serialNo"{
    description = "Enter serial no"
    type = number
}

output "message"{
    value = "Hello ${var.username} ${var.surname}, Welcome to terraform. Your serial no is ${var.serialNo}"
}