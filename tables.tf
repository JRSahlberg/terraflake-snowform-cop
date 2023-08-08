resource "snowflake_table" "user_profiles" {
  provider = snowflake.sys_admin
  database = snowflake_database.db.name
  schema   = snowflake_schema.test_schema.name
  name     = "USER_PROFILES"
  comment  = "Table to store user profile details."

  column {
    name     = "USER_ID"
    type     = "INTEGER"
    nullable = false
    comment  = "Unique identifier for a user."
  }

  column {
    name     = "EMAIL"
    type     = "VARCHAR(255)"
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


resource "snowflake_table" "orders" {
  provider = snowflake.sys_admin
  database = snowflake_database.db.name
  schema   = snowflake_schema.test_schema.name
  name     = "ORDERS"
  comment  = "Table to store orders placed by users."

  column {
    name     = "ORDER_ID"
    type     = "INTEGER"
    nullable = false
    comment  = "Unique identifier for an order."
  }

  column {
    name     = "USER_ID"
    type     = "INTEGER"
    nullable = false
    comment  = "Foreign key referencing USER_PROFILES table."
  }

  column {
    name     = "ORDER_DATE"
    type     = "DATE"
    nullable = false
    comment  = "Date when the order was placed."
  }

  column {
    name     = "TOTAL_AMOUNT"
    type     = "DECIMAL(10,2)"
    nullable = false
    comment  = "Total amount for the order."
  }

  column {
    name     = "STATUS"
    type     = "VARCHAR(50)"
    nullable = false
    comment  = "Current status of the order (e.g., Pending, Shipped, Delivered)."
  }
}