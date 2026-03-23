# Overview

- [Overview](#overview)
- [Create policy](#create-policy)
- [Create Policy](#create-policy-1)
- [Masking policy creation category](#masking-policy-creation-category)
- [1️⃣ Full Masking (Static Masking)](#1️⃣-full-masking-static-masking)
  - [Example](#example)
  - [📌 Output](#-output)
  - [✅ Use Case](#-use-case)
- [2️⃣ Partial Masking](#2️⃣-partial-masking)
  - [Example](#example-1)
  - [📌 Output](#-output-1)
  - [✅ Use Case](#-use-case-1)
- [3️⃣ Conditional Masking (Role-Based Masking)](#3️⃣-conditional-masking-role-based-masking)
  - [Example](#example-2)
  - [📌 Output](#-output-2)
  - [✅ Use Case](#-use-case-2)
- [4️⃣ Hash-Based Masking](#4️⃣-hash-based-masking)
  - [Example](#example-3)
  - [📌 Output](#-output-3)
  - [✅ Use Case](#-use-case-3)
- [5️⃣ Randomized / Tokenized Masking](#5️⃣-randomized--tokenized-masking)
  - [Example](#example-4)
  - [📌 Output](#-output-4)
  - [✅ Use Case](#-use-case-4)
- [6️⃣ NULL Masking](#6️⃣-null-masking)
  - [Example](#example-5)
  - [📌 Output](#-output-5)
  - [✅ Use Case](#-use-case-5)

&nbsp;

&nbsp;

&nbsp;

# Create policy

Masking policy can be created using **CREATE MASKING POLICY** command

&nbsp;

&nbsp;

# Create Policy

```sql
create masking policy policy_name as (val string) returns string -> case condition
```

&nbsp;

&nbsp;

# Masking policy creation category

| Type                | Behavior           | Example Use   |
| ------------------- | ------------------ | ------------- |
| Full Masking        | Completely hides   | Password      |
| Partial Masking     | Shows partial data | Phone         |
| Conditional Masking | Role-based access  | Salary        |
| Hash Masking        | Converts to hash   | Analytics     |
| Random Masking      | Fake/random data   | Testing       |
| NULL Masking        | Returns NULL       | Sensitive PII |
|                     |                    |               |

&nbsp;

&nbsp;

# 1️⃣ Full Masking (Static Masking)

👉 Completely hides the data

&nbsp;

## Example

```sql
CASE
  WHEN CURRENT_ROLE() = 'ADMIN' THEN val
  ELSE '****'
END
```

&nbsp;

## 📌 Output

```plsql
Admin → john@gmail.com
Others → ****
```

&nbsp;

## ✅ Use Case

- Passwords
- Highly sensitive fields

&nbsp;

&nbsp;

# 2️⃣ Partial Masking

👉 Shows some part of the data, hides the rest

&nbsp;

## Example

```plsql
CASE
WHEN CURRENT_ROLE() = 'ADMIN' THEN val
ELSE CONCAT(LEFT(val, 2), '****')
END
```

&nbsp;

## 📌 Output

```plsql
Admin → 9876543210
Others → 98****
```

&nbsp;

## ✅ Use Case

- Phone numbers
- Emails
- Credit card numbers

&nbsp;

&nbsp;

# 3️⃣ Conditional Masking (Role-Based Masking)

👉 Data visibility depends on role or condition

&nbsp;

## Example

```sql
CASE
  WHEN CURRENT_ROLE() IN ('HR', 'ADMIN') THEN val
  ELSE NULL
END
```

&nbsp;

## 📌 Output

- HR/Admin → Real data
- Others → NULL

&nbsp;

## ✅ Use Case

- Salary data
- Employee records

&nbsp;

&nbsp;

# 4️⃣ Hash-Based Masking

👉 Converts data into hashed values

&nbsp;

## Example

```plsql
CASE
  WHEN CURRENT_ROLE() = 'ADMIN' THEN val
  ELSE SHA2(val)
END
```

&nbsp;

## 📌 Output

```plsql
Admin → original value
Others → encrypted/hash value
```

&nbsp;

## ✅ Use Case

- Data anonymization
- Analytics without exposing real data

&nbsp;

&nbsp;

# 5️⃣ Randomized / Tokenized Masking

👉 Replaces data with random or fake values

&nbsp;

## Example

```sql
CASE
  WHEN CURRENT_ROLE() = 'ADMIN' THEN val
  ELSE RANDOM()
END
```

&nbsp;

## 📌 Output

```plsql
Admin → real data
Others → random numbers
```

&nbsp;

## ✅ Use Case

- Testing environments
- Data sharing

&nbsp;

&nbsp;

# 6️⃣ NULL Masking

👉 Completely removes visibility (returns NULL)

&nbsp;

## Example

```plsql
CASE
  WHEN CURRENT_ROLE() = 'ADMIN' THEN val
  ELSE NULL
END
```

&nbsp;

## 📌 Output

```plsql
Non-authorized users → NULL
```

&nbsp;

## ✅ Use Case

- Extremely sensitive fields

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

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
