# Terraform Snowflake Demo

This repository demonstrates how to use Terraform to manage Snowflake resources, including databases, schemas, and tables. By leveraging Infrastructure as Code (IaC), we can version control and automate the provisioning and management of Snowflake resources.

## Prerequisites

1.  Terraform installed.
2.  Snowflake account.
3.  Snowflake Terraform provider installed.

## Getting Started

### 1. Clone the Repository

    git clone https://github.com/victormacaubas/terraflake-snowform-cop.git
    cd terraflake-snowform-cop

### 2. Initialize Terraform

Before you can run any Terraform commands, you'll need to initialize your environment. This will download the necessary provider plugins.

    terraform init

### 3. Update Credentials

Store the credentials using env. variables:

    SNOWFLAKE_ACCOUNT = <account_identifier>
    SNOWFLAKE_PASSWORD = <user_password>
    SNOWFLAKE_USER = <user>


### 4. Plan the Deployment

To see what changes Terraform will apply to your environment:

    terraform plan

### 5. Apply the Changes

To apply the planned changes:

    terraform apply

## Resources Created

-   **Snowflake Warehouse**: `DEMO_WH`
-   **Snowflake Database**: `Bookstore_DB`
-   **Snowflake Schema**: `Inventory`
-   **Snowflake Tables**: `Authors`, `Books`, `Genres`, `Customers`, and `Orders`.

## Cleaning Up

To destroy the resources created by this demo:

    terraform destroy
