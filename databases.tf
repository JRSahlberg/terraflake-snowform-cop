resource "snowflake_database" "db" {
  provider = snowflake.sys_admin
  name     = "TF_DEMO2"
}