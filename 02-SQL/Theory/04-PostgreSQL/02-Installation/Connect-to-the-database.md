# Overview

- Connect to the Database
- Connect to the Database using SQL Shell
- Connect to the Database using pgAdmin

&nbsp;

&nbsp;

&nbsp;

# Connect to the Database

There are several ways to connect to the database, we will look at two ways in this tutorial:

- SQL Shell (psql)
- pgAdmin 4

Both of them comes with the installation of PostgreSQL

&nbsp;

&nbsp;

# Connect to the Database using SQL shell

### Steps

1. open pgadmin
2. open **sql shell**
3. in sql shell press enter for different options and enter password

&nbsp;

### Note

SQL Shell waits for the semicolon and executes all lines as one SQL statement.

A multiple lines SQL statement is not executed before we include a semicolon at the end.

&nbsp;

&nbsp;

# Check the version

```sql
SELECT version();
```

&nbsp;

&nbsp;

# Connect to the Database using pgadmin

### Steps

1. Start pgAdmin4

2. Enter the password
3. Click on the [Database] option on in the left sidebar
4. Find a database named `postgres`, right-click it choose the "Query Tool"

5. Write SQL Statements

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
