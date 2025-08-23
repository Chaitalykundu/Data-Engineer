# Overview

- [Overview](#overview)
- [Snowsight](#snowsight)
- [Architecture \& Access](#architecture--access)
- [Navigation Sidebar](#navigation-sidebar)
- [Limitations of Snowsight](#limitations-of-snowsight)
- [When to Use Snowsight?](#when-to-use-snowsight)
- [Querying data using worksheets](#querying-data-using-worksheets)
  - [Writing queries in worksheets](#writing-queries-in-worksheets)
    - [Note](#note)

&nbsp;

&nbsp;

&nbsp;

# Snowsight

Snowsight is the modern web-based user interface (UI) for Snowflake, introduced as a replacement and enhancement to the Classic Console.

It’s designed to provide a better developer experience, stronger governance capabilities, collaboration features, and visualization tools.

&nbsp;

&nbsp;

# Architecture & Access

- Snowsight runs entirely in the browser (no local installation).

- **Authentication**: SSO, MFA, key-pair login, or standard username/password.

- It connects to Snowflake’s backend services, but UI features differ by role and privileges.

&nbsp;

&nbsp;

# Navigation Sidebar

- **Home** → Overview & quick links.
- **Search** → Search bar
- **Projects** → Worksheets, dashboards
- **Data** → Databases, schemas, tables, views, and data objects.
- **AL / ML** → Snowflake AI & ML Studio
- **Monitoring** → Query executions, warehouse usage.
- **Admin** (role-based) → Users, roles, warehouses, billing.

&nbsp;

&nbsp;

# Limitations of Snowsight

- Some rare account admin settings are still only available in Classic Console or via SQL.
- Heavy-duty BI dashboards are better in tools like Power BI/Tableau.
- Performance depends on browser & internet connection.

&nbsp;

&nbsp;

# When to Use Snowsight?

- Daily query development & testing.
- Quick visualizations.
- Monitoring warehouses & queries.
- Governance & tagging.
- Sharing results with teams.
- Exploring marketplace datasets.

&nbsp;

&nbsp;

# Querying data using worksheets

After you create or open a worksheet, you can manage the worksheet, write and execute queries, explore query results and history, and set up filters using Snowsight.

&nbsp;

&nbsp;

## Writing queries in worksheets

After you open a worksheet, you can write SQL queries and statements.

&nbsp;

### Note

Multiple SQL statements in a single API call are not supported. Ensure that each SQL query in the worksheet ends with a single `semicolon (;)`.

&nbsp;

&nbsp;
