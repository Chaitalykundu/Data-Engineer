## Overview

- [Overview](#overview)
- [Questions](#questions)
  - [PostgreSQL](#postgresql)
  - [Data](#data)
  - [Database](#database)
  - [SQL](#sql)
- [Interview Question](#interview-question)
- [Interview Question Answer](#interview-question-answer)
  - [1. What is RDBMS](#1-what-is-rdbms)
  - [2. What is SQL](#2-what-is-sql)
  - [3. What is a database](#3-what-is-a-database)
  - [4. What is Primary key](#4-what-is-primary-key)
  - [5. What is Unique key](#5-what-is-unique-key)

&nbsp;

&nbsp;

&nbsp;

# Questions

## Tasks

1. What is task in snowflake
2.

&nbsp;

&nbsp;

&nbsp;

# Column level security

1. How does Snowflake implement column-level security?
2. Name schema-level objects in Snowflake

&nbsp;

&nbsp;

# Access control

1. database is account level or database level object

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Answer

## Column level security

### 1. How does Snowflake implement column-level security?

Snowflake implements column-level security primarily using dynamic data masking policies, along with RBAC and
secure views.

&nbsp;

&nbsp;

### 2. Name schema-level objects in Snowflake

Tables, Views, Materialized Views, Streams, Tasks, Functions, Procedures, Sequences, Stages, File Formats, Pipes, and Policies.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

## Access control

### 1. database is account level or database level object

A database exists inside an account, but it is part of the data hierarchy, not the account infrastructure.
It contains:

- Schemas
- Tables
- Views
- Streams, Tasks, etc.

👉 So it belongs to the database layer

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
