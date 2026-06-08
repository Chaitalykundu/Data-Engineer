# Overview

- [Overview](#overview)
- [Set](#set)
  - [Think of it like this:](#think-of-it-like-this)
- [Example:](#example)
  - [Insert data](#insert-data)
  - [Output:](#output)
- [Why use `SET`?](#why-use-set)
- [Important limitation](#important-limitation)
  - [Why?](#why)
  - [Better design:](#better-design)

&nbsp;

&nbsp;

&nbsp;

# Set

**SET** is a datatype available in MySQL where a column can store multiple values from a predefined list.

&nbsp;

## Think of it like this

👉 A student can have multiple hobbies:

- Reading
- Music
- Sports
- Dancing

&nbsp;

Instead of creating separate columns for each hobby, `SET` allows storing multiple selected values in one column.

&nbsp;

&nbsp;

# Example

```sql
CREATE TABLE Students (
    student_id INT,
    student_name VARCHAR(50),
    hobbies SET('Reading', 'Music', 'Sports', 'Dancing')
);
```

&nbsp;

## Insert data

```sql
INSERT INTO Students VALUES
(1, 'Rahul', 'Reading'),
(2, 'Priya', 'Music,Sports'),
(3, 'Amit', 'Reading,Dancing'),
(4, 'Sneha', 'Music,Reading,Sports');
```

&nbsp;

&nbsp;

## Output

| student_id | student_name | hobbies                |
| ---------- | ------------ | ---------------------- |
| 1          | Rahul        | Reading                |
| 2          | Priya        | Music, Sports          |
| 3          | Amit         | Reading, Dancing       |
| 4          | Sneha        | Music, Reading, Sports |

&nbsp;

&nbsp;

# Why use `SET`?

If a column needs multiple selections, `SET` can handle it.

Example real-world use cases:

- User permissions → read, write, delete
- Product sizes available → S, M, L
- Employee skills → SQL, Python, Excel

&nbsp;

&nbsp;

# Important limitation

`SET` is mostly specific to MySQL and is generally not recommended in normalized database design.

&nbsp;

## Why?

Because storing multiple values in one column violates 1NF (First Normal Form).

&nbsp;

## Better design

```sql
Student_Hobbies
---------------
student_id | hobby
1          | Reading
2          | Music
2          | Sports
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
