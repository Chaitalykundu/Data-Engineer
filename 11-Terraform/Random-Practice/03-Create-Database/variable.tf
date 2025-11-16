variable "snowflake_account" {
  type    = string
  default = "LTJTHOR-GU72308"
}

variable "snowflake_user" {
  type    = string
  default = "CHAITALYKUNDU"
}

variable "snowflake_password" {
  type      = string
  sensitive = true
}