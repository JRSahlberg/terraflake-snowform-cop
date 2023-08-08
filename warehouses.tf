resource "snowflake_warehouse" "warehouse" {
  provider       = snowflake.sys_admin
  name           = "TF_DEMO"
  warehouse_size = "xsmall"
  auto_suspend   = 60
}