# Overview

- [Overview](#overview)
- [Problem 1](#problem-1)
  - [Cause](#cause)
  - [Solution](#solution)
  - [Equivalent terraform](#equivalent-terraform)

&nbsp;

&nbsp;

&nbsp;

# Problem 1

I was creating database using USERADMIN, I face the following error when I run `terraform apply`

```bash
│ Error: error creating database DB_DEV_TEST: 003001 (42501): SQL access control error:
│ Insufficient privileges to operate on account 'OL65898'.
```

&nbsp;

&nbsp;

## Cause

Terraform is trying to create a database with a role that lacks `CREATE DATABASE` privileges.

&nbsp;

&nbsp;

## Solution

GRANT CREATE DATABASE ON ACCOUNT TO ROLE your_role_name;

&nbsp;

&nbsp;

## Equivalent terraform

```tf
resource "snowflake_account_grant" "grant" {
  roles             = ["USERADMIN"]
  privilege         = "CREATE DATABASE"
  with_grant_option = false
}
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
