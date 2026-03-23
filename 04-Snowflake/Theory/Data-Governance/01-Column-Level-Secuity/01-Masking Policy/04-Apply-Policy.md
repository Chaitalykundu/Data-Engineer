# Overview

- [Overview](#overview)
- [🔐 Steps to Apply Masking Policy](#-steps-to-apply-masking-policy)
  - [✅ Step 1: Create Masking Policy](#-step-1-create-masking-policy)
  - [✅ Step 2: Apply Masking Policy to Column](#-step-2-apply-masking-policy-to-column)
  - [How It Works](#how-it-works)
  - [🧪 Step 3: Test It](#-step-3-test-it)
  - [⚠️ Important Notes](#️-important-notes)
    - [1. Data Type Must Match](#1-data-type-must-match)
    - [2. Privileges Required](#2-privileges-required)
    - [3. Works Dynamically](#3-works-dynamically)

&nbsp;

&nbsp;

&nbsp;

After creating masking policies, we can apply them wherever we have a requirement to protect the data or hide the data.

They policy should be applied in column level.

Wee can apply same policy in multiple columns from multiple tables and views.

&nbsp;

&nbsp;

# 🔐 Steps to Apply Masking Policy

## ✅ Step 1: Create Masking Policy

```sql
CREATE MASKING POLICY policy_name AS (val STRING)
RETURNS STRING ->
CASE
    WHEN CURRENT_ROLE() = 'ADMIN' THEN val
    ELSE '****@masked.com'
END;
```

&nbsp;

&nbsp;

## ✅ Step 2: Apply Masking Policy to Column

```sql
ALTER TABLE policy
ALTER COLUMN column_name
SET MASKING POLICY policy_name;
```

&nbsp;

&nbsp;

## How It Works

- Policy is attached to the column
- Every query automatically checks:
  - `CURRENT_ROLE()`
- Based on role → data is shown or masked

&nbsp;

&nbsp;

## 🧪 Step 3: Test It

Switch Role

```sql
USE ROLE ANALYST;
SELECT email FROM customers;
```

👉 Output: masked data

&nbsp;

```sql
USE ROLE ADMIN;
SELECT email FROM customers;
```

👉 Output: actual data

&nbsp;

&nbsp;


## ⚠️ Important Notes

### 1. Data Type Must Match

```
Column type = Policy return type
```

&nbsp;

### 2. Privileges Required

You need:

```sql
ALTER on table
APPLY MASKING POLICY privilege
```

&nbsp;

### 3. Works Dynamically

No data is changed physically
Masking happens at query runtime

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
