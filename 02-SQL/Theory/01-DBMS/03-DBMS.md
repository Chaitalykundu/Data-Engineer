# Overview

- [Overview](#overview)
- [Database Management System (DBMS)](#database-management-system-dbms)
- [Types of Database Management System](#types-of-database-management-system)
- [Features / Why Use DBMS](#features--why-use-dbms)
- [Functions of DBMS](#functions-of-dbms)
- [DBMS vs. File System](#dbms-vs-file-system)
- [Advantages of DBMS](#advantages-of-dbms)
- [Disadvantages of DBMS](#disadvantages-of-dbms)
- [Popular DBMS Software \& Their Use Cases](#popular-dbms-software--their-use-cases)
- [RDBMS vs NoSQL vs NewSQL](#rdbms-vs-nosql-vs-newsql)

&nbsp;

&nbsp;

&nbsp;

# Database Management System (DBMS)

DBMS is a software application used to create, manipulate or delete database.

It provides an organized way to interact with databases and ensures data consistency, security, and integrity.

&nbsp;

&nbsp;

# Types of Database Management System

There are **two** types of Database Management System.

1. Relational Database Management System
2. Non-relational Database Management System

&nbsp;

&nbsp;

| Relational Database Management System                    | Non-relational Database Management System                                     |
| -------------------------------------------------------- | ----------------------------------------------------------------------------- |
| Also known as RDBMS                                      | Also known as No-SQL                                                          |
| Data stored in tables                                    | Data not stored in table                                                      |
| Popular RDBMS are : MySQL, SQLServer, Oracle, PostgreSQL | MongoDB                                                                       |
| Use Cases: Banking, e-commerce, ERP systems              | Use Cases: Big data applications, real-time analytics, social media platforms |
|                                                          |                                                                               |

&nbsp;

&nbsp;

# Features / Why Use DBMS

DBMS overcomes these issues by offering:

- **Data Organization** - Stores data in a structured format.
- **Data Security** - Provides access control mechanisms.
- **Data Consistency** - Reduces redundancy and maintains integrity.
- **Concurrency Control** - Manages multiple users accessing the database simultaneously.
- **Backup & Recovery** - Prevents data loss in case of failures.
- **Efficient Querying** - Uses SQL and other query languages to retrieve data quickly.

&nbsp;

&nbsp;

# Functions of DBMS

1. **Data Definition** → Defines tables, columns, and data types (CREATE TABLE).
2. **Data Manipulation** → Insert, update, delete records (INSERT, UPDATE, DELETE).
3. **Data Retrieval** → Fetch specific data using queries (SELECT).
4. **Access Control** → Restricts unauthorized access (GRANT, REVOKE).
5. **Transaction Management** → Ensures reliable data operations (COMMIT, ROLLBACK).
6. **Backup & Recovery** → Prevents data loss (BACKUP DATABASE).

&nbsp;

&nbsp;

# DBMS vs. File System

| Feature        | DBMS                               | File System                   |
| -------------- | ---------------------------------- | ----------------------------- |
| Data Storage   | Structured (tables, relations)     | Unstructured (files, folders) |
| Security       | High (authentication & encryption) | Low (manual control)          |
| Redundancy     | Minimal (data normalization)       | High (duplicate files)        |
| Concurrency    | Multiple users supported           | Limited multi-user access     |
| Data Integrity | Ensured with constraints           | Not guaranteed                |
|                |                                    |                               |

&nbsp;

&nbsp;

# Advantages of DBMS

- **_Reduces Data Redundancy_** → Eliminates duplicate data.
- **_Ensures Data Consistency_** → Keeps data accurate across multiple users.
- **_Enhances Data Security_** → Implements authentication & authorization.
- **_Improves Data Sharing_** → Multiple users can access data simultaneously.
- **_Increases Efficiency_** → Optimized queries provide faster performance.

&nbsp;

&nbsp;

# Disadvantages of DBMS

- **_Complex Implementation_** → Requires skilled administrators.
- **_High Cost_** → Licensing & maintenance costs.
- **_Performance Issues_** → Large-scale data may slow down processing.

&nbsp;

&nbsp;

# Popular DBMS Software & Their Use Cases

| DBMS                 | Type  | Best For                             |
| -------------------- | ----- | ------------------------------------ |
| MySQL                | RDBMS | Web apps, e-commerce, blogs          |
| PostgreSQL           | RDBMS | Data analytics, banking, research    |
| MongoDB              | NoSQL | Real-time apps, social media, IoT    |
| Oracle               | RDBMS | Enterprise systems, finance, telecom |
| Microsoft SQL Server | RDBMS | Business intelligence, reporting     |
| Cassandra            | NoSQL | Distributed systems, cloud databases |
|                      |       |                                      |

&nbsp;

&nbsp;

# RDBMS vs NoSQL vs NewSQL

| Feature         | RDBMS                                         | NoSQL                                                                  | NewSQL                              |
| --------------- | --------------------------------------------- | ---------------------------------------------------------------------- | ----------------------------------- |
| Data Model      | Tables (Structured)                           | Key-Value, Document, Column, Graph                                     | Tables (Structured)                 |
| Scalability     | Vertical (Scaling up)                         | Horizontal (Scaling out)                                               | Horizontal (Distributed)            |
| Schema          | Fixed                                         | Flexible                                                               | Fixed                               |
| Consistency     | Strong                                        | Eventual                                                               | Strong                              |
| ACID Compliance | Yes                                           | No (uses BASE: Basically Available, Soft state, Eventually consistent) | Yes                                 |
| Best For        | Traditional applications (e.g., banking, ERP) | Big data, real-time applications                                       | Cloud-native, scalable applications |
|                 |                                               |                                                                        |                                     |

&nbsp;
&nbsp;
