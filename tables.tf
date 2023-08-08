resource "snowflake_table" "user_profiles" {
  provider = snowflake.sys_admin
  database = snowflake_database.db.name
  schema   = snowflake_schema.test_schema.name
  name     = "USER_PROFILES"

  column {
    name     = "USER_ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "EMAIL"
    type     = "VARCHAR(255)"
    nullable = false
  }

  column {
    name     = "FIRST_NAME"
    type     = "VARCHAR(100)"
    nullable = true
  }

  column {
    name     = "LAST_NAME"
    type     = "VARCHAR(100)"
    nullable = true
  }

  column {
    name     = "DATE_JOINED"
    type     = "DATE"
    nullable = true
  }
}


resource "snowflake_table" "orders" {
  provider = snowflake.sys_admin
  database = snowflake_database.db.name
  schema   = snowflake_schema.test_schema.name
  name     = "ORDERS"

  column {
    name     = "ORDER_ID"
    type     = "NUMBER(38,0)"
    nullable = false
    comment  = "Unique identifier for an order."
  }

  column {
    name     = "USER_ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "ORDER_DATE"
    type     = "DATE"
    nullable = false
  }

  column {
    name     = "TOTAL_AMOUNT"
    type     = "NUMBER(10,2)"
    nullable = false
  }

  column {
    name     = "STATUS"
    type     = "VARCHAR(50)"
    nullable = false
  }
}