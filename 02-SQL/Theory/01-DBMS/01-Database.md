# Overview

- [Overview](#overview)
- [Database](#database)
  - [Purpose of database](#purpose-of-database)
- [Types of Database](#types-of-database)
- [Structured vs. Unstructured Database](#structured-vs-unstructured-database)
- [Conclusion](#conclusion)

&nbsp;

&nbsp;

&nbsp;

# Database

- Database is a **collection of similar and organized data** in a format that can be easily
  accessed.

- It is used to organize data in the form of a **table , schema, view, reports** etc.

&nbsp;

&nbsp;

## Purpose of database

- to create a large amount of information by storing, retrieving and managing data
- Easily accessed
- ensuring data integrity, security and accessibility for various applications and users.
- Data Backup & Recovery

&nbsp;

N.B. : Database handler creates a database in such a way that only one set of software program will be accessed by the user.

&nbsp;

&nbsp;

# Types of Database

There are **two** types of database.

1. Structured Database
2. Unstructured Database

&nbsp;

&nbsp;

# Structured vs. Unstructured Database

| Feature        | Structured Database (SQL)                                                                  | Unstructured Database (NoSQL)                                                                          |
| -------------- | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| Definition     | A structured database organizes data in a predefined format, typically in rows and columns | An unstructured database stores data in no fixed format, making it flexible for big data applications. |
| Data Format    | Fixed schema (tables, rows, columns)                                                       | Flexible (JSON, XML, multimedia, logs)                                                                 |
| Query Language | SQL (Structured Query Language)                                                            | NoSQL (Varies: Key-Value, Document, Graph)                                                             |
| Scalability    | Vertical scaling (adding resources to a single server)                                     | Horizontal scaling (distributing across multiple servers)                                              |
| Data Integrity | High (ACID compliance)                                                                     | Moderate (Eventual consistency)                                                                        |
| Performance    | Optimized for transactions                                                                 | Optimized for speed & large-scale data processing                                                      |
| Example        | Relational Databases (RDBMS): MySQL, PostgreSQL, Oracle, SQL Server                        | MongoDB                                                                                                |
| Use Cases      | Banking, ERP, Inventory                                                                    | Social media, AI, IoT, Real-time apps                                                                  |
|                |                                                                                            |                                                                                                        |

&nbsp;

&nbsp;

# Conclusion

- Use a structured database when you need strong data integrity, consistency, and complex
  queries.

- Use an unstructured database when handling big data, real-time analytics, or flexible data formats.
