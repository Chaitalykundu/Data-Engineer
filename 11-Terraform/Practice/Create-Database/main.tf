resource "snowflake_database" "my_db" {
  name                        = "DEMO_DB"
  comment                     = "Demo database created using Terraform"
  data_retention_time_in_days = 1
}
