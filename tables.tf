resource "snowflake_table" "authors" {
  provider = snowflake.sys_admin
  database = snowflake_database.bookstore_db.name
  schema   = snowflake_schema.inventory.name
  name     = "AUTHORS"

  column {
    name     = "ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "FIRST_NAME"
    type     = "VARCHAR(100)"
    nullable = false
  }

  column {
    name     = "LAST_NAME"
    type     = "VARCHAR(100)"
  }

  column {
    name     = "BIRTH_DATE"
    type     = "DATE"
  }

  column {
    name     = "NATIONALITY"
    type     = "VARCHAR(100)"
  }
}

resource "snowflake_table" "books" {
  provider = snowflake.sys_admin
  database = snowflake_database.bookstore_db.name
  schema   = snowflake_schema.inventory.name
  name     = "BOOKS"

  column {
    name     = "ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "TITLE"
    type     = "VARCHAR(100)"
    nullable = false
  }

  column {
    name     = "ISBN"
    type     = "VARCHAR(100)"
  }

  column {
    name     = "PUBLICATION_DATE"
    type     = "DATE"
  }

  column {
    name     = "PRICE"
    type     = "NUMBER(10,2)"
  }

  column {
    name     = "AUTHOR_ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "GENRE_ID"
    type     = "NUMBER(38,0)"
  }
}

resource "snowflake_table" "genres" {
  provider = snowflake.sys_admin
  database = snowflake_database.bookstore_db.name
  schema   = snowflake_schema.inventory.name
  name     = "GENRES"

  column {
    name     = "ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "NAME"
    type     = "VARCHAR(100)"
    nullable = false
  }

  column {
    name     = "DESCRIPTION"
    type     = "VARCHAR(16777216)"
  }
}

resource "snowflake_table" "customers" {
  provider = snowflake.sys_admin
  database = snowflake_database.bookstore_db.name
  schema   = snowflake_schema.inventory.name
  name     = "CUSTOMERS"

  column {
    name     = "ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "FIRST_NAME"
    type     = "VARCHAR(100)"
    nullable = false
  }

  column {
    name     = "LAST_NAME"
    type     = "VARCHAR(100)"
    nullable = false
  }

  column {
    name     = "EMAIL"
    type     = "VARCHAR(100)"
  }

  column {
    name     = "PHONE_NUMBER"
    type     = "VARCHAR(20)"
  }
}

resource "snowflake_table" "orders" {
  provider = snowflake.sys_admin
  database = snowflake_database.bookstore_db.name
  schema   = snowflake_schema.inventory.name
  name     = "ORDERS"

  column {
    name     = "ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "CUSTOMER_ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "BOOK_ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "ORDER_DATE"
    type     = "DATE"
    nullable = false
  }

  column {
    name     = "QUANTITY_ORDERED"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "TOTAL_AMOUNT"
    type     = "NUMBER(10,2)"
    nullable = false
  }
}