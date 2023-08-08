resource "snowflake_schema" "test_schema" {
  provider            = snowflake.sys_admin
  database            = snowflake_database.db.name
  name                = "TEST_SCHEMA"
}