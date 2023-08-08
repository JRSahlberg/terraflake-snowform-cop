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

provider "snowflake" {
  alias = "user_admin"
  role  = "USERADMIN" # Provider/role to create users/roles
}

provider "snowflake" {
  alias = "security_admin"
  role  = "SECURITYADMIN" # Provider/role to manage grants
}