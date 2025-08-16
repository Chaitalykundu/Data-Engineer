# Overview

- [Overview](#overview)
- [Task](#task)
- [Concept of Tasks in Snowflake](#concept-of-tasks-in-snowflake)
- [Key Features](#key-features)
- [Types of tasks](#types-of-tasks)
- [What Can You Use a Task For](#what-can-you-use-a-task-for)
- [Task Lifecycle Commands](#task-lifecycle-commands)

&nbsp;

&nbsp;

&nbsp;

# Task

A task is a powerful object used to automate SQL statements execution on a scheduled basis or based on streaming data triggers. This makes it very useful for moving and processing data (ETL/ELT), managing data workflows, and reacting to events in real time.

একটি TASK হলো একটি শক্তিশালী Object যা নির্ধারিত সময় অনুযায়ী বা স্ট্রিমিং ডেটা ট্রিগার-এর ভিত্তিতে SQL স্টেটমেন্ট স্বয়ংক্রিয়ভাবে চালানোর জন্য ব্যবহৃত হয়। এটি বিশেষভাবে উপযোগী for ETL/ELT প্রসেস, ডেটা পাইপলাইন অর্কেস্ট্রেশন, এবং ইভেন্ট-ভিত্তিক worlflow গঠনের ক্ষেত্রে।

&nbsp;

A task in Snowflake automates the execution of SQL code — like running a query or calling a stored procedure — on a schedule or in response to new data.

&nbsp;

&nbsp;

# Concept of Tasks in Snowflake

Tasks allow you to:

- Run SQL statements like `INSERT`, `UPDATE`, `MERGE`, or `CALL` a stored procedure.
- Automate pipelines using **cron-like schedules** or **triggered execution** (e.g., new rows in a stream).
- Chain tasks to build complex DAG-style workflows.

&nbsp;

&nbsp;

# Key Features

| Feature                        | Description                                                             |
| ------------------------------ | ----------------------------------------------------------------------- |
| **Scheduled or Triggered**     | Run at a scheduled interval or when a condition (like a stream) is met. |
| **SQL or Procedure Execution** | Can run inline SQL or call a stored procedure.                          |
| **Task Graphs**                | Define parent-child relationships to create complex workflows.          |
| **Autonomous or Manual**       | Tasks can run automatically or be resumed manually.                     |

&nbsp;

&nbsp;

# Types of tasks

There are two types of tasks.

1. User managed
2. Serverless

&nbsp;

&nbsp;

# What Can You Use a Task For

| Purpose                            | Example                                                   |
| ---------------------------------- | --------------------------------------------------------- |
| ✅ **ETL / ELT Pipelines**         | Automatically run `INSERT` or `MERGE` to process new data |
| ✅ **Trigger on New Data**         | Use streams to detect changes and react immediately       |
| ✅ **Stored Procedure Automation** | Schedule the execution of complex stored procedures       |
| ✅ **Chained Workflows**           | Create dependencies (task A → task B)                     |
| ✅ **Incremental Loads**           | Load only new data instead of full refreshes              |
| ✅ **Maintenance Tasks**           | Cleanup old data, archive records, etc.                   |

&nbsp;

&nbsp;

# Task Lifecycle Commands

| Command                  | Purpose                |
| ------------------------ | ---------------------- |
| `CREATE TASK`            | To create a task       |
| `ALTER TASK ... RESUME`  | Start a suspended task |
| `ALTER TASK ... SUSPEND` | Pause task execution   |
| `DROP TASK`              | Deletes the task       |
| `SHOW TASKS`             | View existing tasks    |
| `DESCRIBE TASK`          | View detailed metadata |
| `EXECUTE TASK`           | Manually run a task    |

&nbsp;

&nbsp;
