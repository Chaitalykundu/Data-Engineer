# Overview

- [Overview](#overview)
- [Column-Level Security](#column-level-security)
  - [Dynamic Masking Policy](#dynamic-masking-policy)
  - [External Tokenization](#external-tokenization)
- [Key Features](#key-features)
- [Real-World Use Cases](#real-world-use-cases)
- [Column-Level vs Row-Level Security](#column-level-vs-row-level-security)

&nbsp;

&nbsp;

&nbsp;

# Column-Level Security

Column-Level Security in Snowflake is a way to **protect specific columns** in a table or view so that sensitive data is only visible to authorized users.

It Controls the access to individual columns instead of the whole table.

&nbsp;

&nbsp;

Column-level security includes two features.

- Dynamic Data Masking
- External Tokenization

&nbsp;

&nbsp;

## Dynamic Masking Policy

Dynamic Data Masking is a process to hide data by masking with either null value or with other character.

We can create policies to hide the data present in columns

&nbsp;

&nbsp;

## External Tokenization

Tokenization is the process of hiding sensitive data by replacing it with cypher text.

External Tokenization makes use of masking policies with external functions created at external cloud provider side.

&nbsp;

&nbsp;

# Key Features

- **Fine-Grained Control**:
  Security at column level (not full table)

- **Dynamic Masking** :
  Data changes based on user role

- **No Data Duplication**:
  Same table, different views for different users

- **Centralized Policy**:
  One masking policy → applied to multiple columns

&nbsp;

&nbsp;

# Real-World Use Cases

1. **Banking**: Mask account numbers, PAN details
2. **HR Systems**: Hide salary from non-HR users
3. **Healthcare**: Protect patient data
4. **Analytics**: Share data safely without exposing PII

&nbsp;

&nbsp;

# Column-Level vs Row-Level Security

| Feature  | Column-Level   | Row-Level                |
| -------- | -------------- | ------------------------ |
| Controls | Columns        | Rows                     |
| Tool     | Masking Policy | Row Access Policy        |
| Example  | Hide salary    | Show only own department |
|          |                |                          |

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
