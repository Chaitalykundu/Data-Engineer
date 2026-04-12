# Overview

- [Overview](#overview)
- [INNER JOIN](#inner-join)
- [Syntax](#syntax)
- [Example](#example)
- [Use Case](#use-case)
- [Key Point](#key-point)

&nbsp;

&nbsp;

&nbsp;

# INNER JOIN

The `INNER JOIN` returns only rows that have **matching values** in both tables.

Tip: You can use just **JOIN** instead of **INNER JOIN**, as **INNER is the default join type**.

&nbsp;

<img src="../assets/Joins/Inner_join.png">

&nbsp;

&nbsp;

# Syntax

```sql
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
```

&nbsp;

&nbsp;

# Example

Look at a product in the **Products** table:

| ProductID | ProductName   | CategoryID | Price |
| --------- | ------------- | ---------- | ----- |
| 3         | Aniseed Syrup | 2          | 10.00 |

&nbsp;

And look at a row in the **Categories** table:

| CategoryID | CategoryName | Description                                                |
| ---------- | ------------ | ---------------------------------------------------------- |
| 2          | Condiments   | Sweet and savory sauces, relishes, spreads, and seasonings |

&nbsp;

Here we see that the relationship between the two tables above is the "`CategoryID`" column.

Now we create an INNER JOIN on the "**Products**" table and the "**Categories**" table, via the `CategoryID` field:

&nbsp;

```sql
SELECT ProductID, ProductName, CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;
```

&nbsp;

&nbsp;

# Use Case

- Get users who placed orders
- Remove unmatched/null data

&nbsp;

&nbsp;

# Key Point

If there is no match → row is excluded

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
