resource "snowflake_schema" "inventory" {
  provider = snowflake.sys_admin
  name     = "INVENTORY"
  database = snowflake_database.bookstore_db.name
  comment  = "Schema for bookstore inventory tables."
}