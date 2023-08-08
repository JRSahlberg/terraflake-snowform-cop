resource "snowflake_database" "bookstore_db" {
  name    = "BOOKSTORE_DB"
  comment = "Database for managing bookstore inventory."
}