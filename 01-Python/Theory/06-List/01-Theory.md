# Overview

- [Overview](#overview)
- [List](#list)
- [Key Features of Lists](#key-features-of-lists)
- [Creating a List](#creating-a-list)
- [Accessing Elements](#accessing-elements)
- [Changing List Elements](#changing-list-elements)
  - [Output](#output)
- [Nested List](#nested-list)
  - [Output:](#output-1)
- [Negative to positive index](#negative-to-positive-index)
  - [Negative index](#negative-index)

&nbsp;

&nbsp;

&nbsp;

# List

Lists in Python are ordered, mutable (changeable) collections that can store items of different data types.

&nbsp;

They're one of the most common and powerful data structures in Python.

&nbsp;

&nbsp;

# Key Features of Lists

| Feature           | Meaning                                 |
| ----------------- | --------------------------------------- |
| Ordered           | Maintains the order you insert items    |
| Mutable           | You can modify, add, or remove elements |
| Allows duplicates | Same value can appear multiple times    |
| Heterogeneous     | Can store mixed data types              |
|                   |                                         |

&nbsp;

&nbsp;

# Creating a List

Lists are created using **square brackets** `[ ]`.

&nbsp;

```py
fruits = ["apple", "banana", "mango"]
numbers = [1, 2, 3, 4]
mixed = [1, "hello", 3.5, True]
empty = []
```

&nbsp;

&nbsp;

# Accessing Elements

List elements are accessed using index numbers.

| Type              | Example       | Output               |
| ----------------- | ------------- | -------------------- |
| Indexing          | `fruits[0]`   | `'apple'`            |
| Negative Indexing | `fruits[-1]`  | `'mango'`            |
| Slicing           | `fruits[0:2]` | `['apple','banana']` |
|                   |               |                      |

&nbsp;

&nbsp;

&nbsp;

# Changing List Elements

Lists are mutable, meaning values can be changed.

```py
fruits = ["apple", "banana", "mango"]
fruits[1] = "orange"
print(fruits)
```

&nbsp;

### Output

```md
['apple', 'orange', 'mango']
```

&nbsp;

&nbsp;

# Nested List

A list inside another list.

```py
data = [["Python", "Java"], [10, 20]]
print(data[0][1])
```

&nbsp;

### Output:

```md
Java
```

&nbsp;

&nbsp;

# Negative to positive index

## Negative index

&nbsp;

&nbsp;

&nbsp;
