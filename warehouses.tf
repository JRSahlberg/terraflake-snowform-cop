resource "snowflake_warehouse" "warehouse" {
  provider       = snowflake.sys_admin
  name           = "DEMO_WH"
  warehouse_size = "xsmall"
  auto_suspend   = 60
}