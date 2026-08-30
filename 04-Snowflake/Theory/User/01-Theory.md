# Overview

- [Overview](#overview)
- [Users](#users)

&nbsp;

&nbsp;

&nbsp;

# Users

- `ACCOUNTADMIN` and `SECURITYADMIN` can create user.
- Prefer create user with `SECURITYADMIN` role and don't create any user using `ACCOUNTADMIN`
- When an user is created a default `public` role is assigned to it.
- Use `desc user <user_name>` to see user properties including default role and secondary role
- Use `show grants to user <user_name>` to see all the roles assigned to the user and list who has ownership to this user

