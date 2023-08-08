terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.68"
    }
  }
}

provider "snowflake" {
  alias = "sys_admin"
  role  = "SYSADMIN" # Provider/role for warehouses, databases, and objects
}
