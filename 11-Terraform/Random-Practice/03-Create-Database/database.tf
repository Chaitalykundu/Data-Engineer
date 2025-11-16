resource "snowflake_database" "first_database" {
  provider                    = snowflake.USERADMIN
  name                        = "DB_DEV_TEST"
  comment                     = "Test database created by terraform"
  data_retention_time_in_days = 3
}