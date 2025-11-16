terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "0.92.0"
    }
  }
}

provider "snowflake" {
  account  = var.snowflake_account
  username = var.snowflake_user
  password = var.snowflake_password
  role     = "ACCOUNTADMIN"
}
