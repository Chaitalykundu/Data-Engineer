terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "0.92.0"
    }
  }
}

provider "snowflake" {
  # Configuration options
  account  = var.snowflake_account
  username = var.snowflake_user
  password = var.snowflake_password
  role     = "ACCOUNTADMIN"
}

provider "snowflake" {
  # Configuration options
  alias    = "USERADMIN"
  account  = var.snowflake_account
  username = var.snowflake_user
  password = var.snowflake_password
  role     = "USERADMIN"
}