# Services or Cloud Services layer

The Cloud Services Layer in Snowflake **coordinates and manages all user interactions and system operations**.

&nbsp;

The cloud services layer is a collection of services that coordinate activities across Snowflake. These services tie together all of the different components of Snowflake in order to **process user requests, from login to query dispatch**.

The cloud services layer also runs on compute instances provisioned by Snowflake from the cloud provider.

It manages all serverless tasks like snowpipe, tasks, materialized view maintenance etc.

&nbsp;

### Services managed in this layer include

- Authentication & Authorization (Access control)
- User and session management
- Query compilation / Parsing, Optimization and Data Caching
- Virtual warehouse management
- Metadata storage and management
- Infrastructure management
- Data Security

&nbsp;

&nbsp;

# How Cloud Service layer works

- Cloud Storage layer is also called **brain of the snowflake**

- Cloud service layer also co-ordinates and manages the entire system

- This layer is completely independent from the storage layer and compute layer and snowflake ensures that it is highly available (**redundancy and fault tolerance**)

- This layer takes care of the following
  - Authentication & Authorization ( via WebUI, or Connector or vSnowSQL or Native connector, or MFA etc)
  - User & session management
  - Query Planning, Compilation, Optimization and Data Caching
  - Virtual Warehouse Management
  - Co-ordinate data storage / updates
  - Transaction management
  - Metadata management (one of the core activity). This feature supports :
    - Zero copy cloning
    - Time Travel
    - Data sharing
    - Caching

  - Manage and maintain the life cycle of a query

- The service layer is highly scalable and distributed across multiple availability zone

&nbsp;

&nbsp;
