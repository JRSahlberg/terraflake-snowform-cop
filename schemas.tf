resource "snowflake_schema" "test_schema" {
  database            = snowflake_database.db.name
  name                = "TEST_SCHEMA"
}