# Overview

- [Overview](#overview)
- [worksheet](#worksheet)
  - [UI Vision](#ui-vision)
  - [Purpose](#purpose)
  - [Features:](#features)
  - [Use Case:](#use-case)
  - [Example:](#example)
- [Databases](#databases)
  - [Purpose:](#purpose-1)
  - [Structure:](#structure)
  - [UI Functionality:](#ui-functionality)
  - [Example:](#example-1)
- [Warehouses](#warehouses)
  - [UI Features:](#ui-features)
  - [Size Options:](#size-options)
  - [Use Case:](#use-case-1)
  - [Tip:](#tip)
- [Roles](#roles)
  - [Purpose:](#purpose-2)
  - [Features:](#features-1)
  - [Use Case:](#use-case-2)
  - [Example:](#example-2)
- [Quick UI Navigation Summary](#quick-ui-navigation-summary)

&nbsp;

&nbsp;

&nbsp;

# worksheet

### UI Vision

1. Sign in to Snowsight.
2. Select **Projects** > **Worksheets** to open the list of worksheets.
3. Open a worksheet.

&nbsp;

&nbsp;

### Purpose

Run SQL queries interactively.

&nbsp;

&nbsp;

### Features:

- SQL editor with syntax highlighting

- Run queries, view history and results

- Bind worksheet to a role, warehouse, and database/schema

&nbsp;

&nbsp;

### Use Case:

Writing queries, testing logic, running transformations or DDLs.

&nbsp;

&nbsp;

### Example:

```sql
SELECT * FROM MY_DB.PUBLIC.EMPLOYEES LIMIT 10;
```

&nbsp;

&nbsp;

&nbsp;

# Databases

### Purpose:

Logical containers for data objects (schemas, tables, views).

&nbsp;

&nbsp;

### Structure:

```md
Database
┗━━ Schema
     ┗━━ Tables / Views / Streams / Tasks
```

&nbsp;

&nbsp;

### UI Functionality:

- Browse databases and objects
- Create/edit/drop schemas and tables
- View table previews and metadata

&nbsp;

&nbsp;

### Example:

Navigate to `MY_DB > PUBLIC > EMPLOYEES` to view a table.

&nbsp;

&nbsp;

&nbsp;

# Warehouses

Purpose: Compute engines that process SQL queries.

&nbsp;

&nbsp;

### UI Features:

- Start/stop warehouses manually
- Set auto-suspend & auto-resume
- Monitor usage (credits consumed, status)

&nbsp;

&nbsp;

### Size Options:

XS, S, M, L, XL, etc.

&nbsp;

&nbsp;

### Use Case:

Choose the right warehouse based on query complexity and concurrency.

&nbsp;

&nbsp;

### Tip:

Use `auto-suspend = 60 sec` to save cost.

&nbsp;

&nbsp;

&nbsp;

# Roles

### Purpose:

Manage RBAC (Role-Based Access Control).

&nbsp;

&nbsp;

### Features:

- Switch between roles from top-right dropdown
- Each role has privileges (e.g., read/write on databases, create warehouse)
- Roles are assigned to users

&nbsp;

&nbsp;

### Use Case:

Control access to data and operations.

&nbsp;

&nbsp;

### Example:

A role like `ANALYST` may only have SELECT access on views.

&nbsp;

&nbsp;

&nbsp;

# Quick UI Navigation Summary

| **Section**    | **What You Do There**                               |
| -------------- | --------------------------------------------------- |
| **Worksheets** | Write/run SQL queries                               |
| **Databases**  | Explore schemas, tables, views                      |
| **Warehouses** | Manage compute (start/stop, size, suspend settings) |
| **Roles**      | Switch role context to change access permissions    |
| **History**    | View query execution history and details            |
| **Admin**      | Manage users, roles, resource monitors, parameters  |
