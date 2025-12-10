variable "string_type" {
  type        = string
  description = "This is string type variable"
  default     = "value"
}

variable "number_type" {
  type        = number
  description = "This is number type variable"
  default     = 1
}

variable "bool_type" {
  type        = bool
  description = "This is boolean type variable"
  default     = false
}

variable "list_type" {
  type        = list(number)
  description = "This is list type variable"
  default     = [1, 2, 3]
}
variable "map_type" {
  type        = map(string)
  description = "This is map type variable"
  default     = 
}
variable "object_type" {
  type        = bool
  description = "This is boolean type variable"
  default     = false
}

variable "list_type" {

}
