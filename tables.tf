resource "snowflake_table" "user_profiles" {
  provider = snowflake.sys_admin
  database = snowflake_database.db.name
  schema   = snowflake_schema.test_schema.name
  name     = "USER_PROFILES"
  comment  = "Table to store user profile details."

  column {
    name     = "USER_ID"
    type     = "INTEGER"
    primary_key = true
    autoincrement = true
    nullable = false
    comment  = "Unique identifier for a user."
  }

  column {
    name     = "EMAIL"
    type     = "VARCHAR(255)"
    unique   = true
    nullable = false
    comment  = "Email address of the user."
  }

  column {
    name     = "FIRST_NAME"
    type     = "VARCHAR(100)"
    nullable = true
    comment  = "First name of the user."
  }

  column {
    name     = "LAST_NAME"
    type     = "VARCHAR(100)"
    nullable = true
    comment  = "Last name of the user."
  }

  column {
    name     = "DATE_JOINED"
    type     = "DATE"
    nullable = true
    comment  = "The date when the user joined."
  }
}
