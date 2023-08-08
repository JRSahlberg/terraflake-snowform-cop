resource "snowflake_database" "bookstore_db" {
  provider = snowflake.sys_admin
  name     = "BOOKSTORE_DB"
  comment  = "Database for managing bookstore inventory."
}