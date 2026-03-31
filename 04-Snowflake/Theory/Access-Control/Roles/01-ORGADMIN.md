# Overview

- [Overview](#overview)
- [ORGADMIN](#orgadmin)
- [Where ORGADMIN Fits](#where-orgadmin-fits)
- [Key Responsibilities of ORGADMIN](#key-responsibilities-of-orgadmin)
  - [1. Manage Accounts](#1-manage-accounts)
  - [2. Billing \& Usage](#2-billing--usage)
  - [3. Organization-Level Policies](#3-organization-level-policies)
  - [4. Account Linking](#4-account-linking)
- [Example Actions](#example-actions)
- [Differences Between ORGADMIN and ACCOUNTADMIN](#differences-between-orgadmin-and-accountadmin)
- [Important Notes](#important-notes)

&nbsp;

&nbsp;

&nbsp;

# ORGADMIN

The **ORGADMIN** role in Snowflake is a special, **highest-level administrative** role at the organization level, above all accounts.

ORGADMIN = Organization Administrator

- It operates at the organization level (not just one account)

- Used when you have multiple Snowflake accounts under one organization

&nbsp;

&nbsp;

# Where ORGADMIN Fits

```
Organization Level → ORGADMIN
        ↓
Account Level → ACCOUNTADMIN, SYSADMIN, etc.
```

👉 So:

```
ORGADMIN > ACCOUNTADMIN
```

&nbsp;

&nbsp;

# Key Responsibilities of ORGADMIN

### 1. Manage Accounts

- Create new Snowflake accounts
- View all accounts under organization

### 2. Billing & Usage

- Monitor:
  - Credit usage
  - Storage usage
- Manage billing

### 3. Organization-Level Policies

- Set governance across multiple accounts

### 4. Account Linking

-Connect multiple Snowflake accounts

&nbsp;

&nbsp;

# Example Actions

```sql
-- Switch to ORGADMIN role
USE ROLE ORGADMIN;

-- View organization accounts
SHOW ORGANIZATION ACCOUNTS;
```

&nbsp;

&nbsp;

# Differences Between ORGADMIN and ACCOUNTADMIN

| Feature      | ORGADMIN          | ACCOUNTADMIN          |
| ------------ | ----------------- | --------------------- |
| Scope        | Organization      | Single Account        |
| Access Level | Highest           | Very High             |
| Manages      | Multiple accounts | Users, roles, objects |
| Billing      | Yes               | Limited               |

&nbsp;

&nbsp;

# Important Notes

- ORGADMIN is not used for daily work
- Very limited users should have it
- Typically used by:
  - Cloud admins
  - Finance / billing team

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

&nbsp;
