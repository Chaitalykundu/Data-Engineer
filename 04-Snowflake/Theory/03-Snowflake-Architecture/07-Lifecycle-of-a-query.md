# Overview

- [Overview](#overview)
- [Lifecycle of a Query or Workload](#lifecycle-of-a-query-or-workload)
- [Role of User and Snowflake](#role-of-user-and-snowflake)

&nbsp;

&nbsp;

&nbsp;

# Lifecycle of a Query or Workload

- You can have any number of connections (virtually infinite) via any different client / connector provided by snowflake (Classic WebUI / SnowSQL, JDBC, ODBC, Spark)

- A Cloud Service layer uses cloud native infrastructure to scale up / down. As a consumer of this you can't see this and everything is taken care by the cloud service layer

- Query is also called workload

- When we submit a query, we also indicate snowflake what kind of compute (size x-small to z-large) we intend to use to serve our query (compute = VWH)

- _First_, The service layer creates a session and check if the user credential (authentication) is valid to use the snowflake account including MFA as well as IP address

- Once the authentication is done, the following activities happen :

  - The query is **parsed** ( logical path)

  - All the objects & operations in the query including warehouse (compute object) is validated if the respective user has the necessary privileges to access the objects or not. (Authentication part)

  - Then an **optimized query plan** is generated

  - Finally the service layer sends the **query layer execution** instruction to the virtual warehouse.

  - It also resumes the requested warehouse if suspended or spins up a new one it is a multi cluster virtual warehouse configuration.

- Finally the query is executed and the result is returned to the user / client program
  - Virtual Warehouse allocated resources as needed
  - Request any data needed to run the query

&nbsp;

&nbsp;

# Role of User and Snowflake

Snowflake admin just have to create users

Entire infra and provisioning are managed by snowflake

Snowflake takes care of starting and stopping compute as per SQL instructions

All security features are in-built. We just need to enable it. Snowflake itself will take care of it.

All optimization and security features are taken care by snowflake.

We just need to focus on building SQL objects, role-security and run business.
