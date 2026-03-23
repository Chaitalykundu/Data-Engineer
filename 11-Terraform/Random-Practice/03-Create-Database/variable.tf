variable "snowflake_account" {
  type    = string
  default = "ydsodxg-gj33192"
}

variable "snowflake_user" {
  type    = string
  default = "CHAITALYKUNDU"
}

variable "snowflake_password" {
  type      = string
  sensitive = true
}
