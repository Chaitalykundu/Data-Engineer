# GRANT CREATE DATABASE ON ACCOUNT TO ROLE your_role_name;

resource "snowflake_account_grant" "privileges_to_useradmin" {
  roles             = ["USERADMIN"]
  privilege         = "CREATE DATABASE"
  with_grant_option = false
}

resource "snowflake_grant_privileges_to_account_role" "privileges_to_sysadmin" {
  privileges        = ["CREATE DATABASE", "CREATE USER"]
  account_role_name = "SYSADMIN"
  on_account        = true
}
