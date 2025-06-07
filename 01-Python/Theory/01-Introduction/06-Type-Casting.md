# Overview

- [Overview](#overview)
- [Type Casting](#type-casting)
- [Types of Type Casting](#types-of-type-casting)
- [Implicit Type Casting (Automatic)](#implicit-type-casting-automatic)
  - [Example](#example)
- [Explicit Type Casting](#explicit-type-casting)
  - [Example](#example-1)
- [Note:](#note)

&nbsp;

&nbsp;

&nbsp;

# Type Casting

Type casting means converting one data type into another.

&nbsp;

&nbsp;

# Types of Type Casting

There are two types of Type Casting.

1. Implicit Type Casting (Automatic)
2. Explicit Type Casting (Manual)

&nbsp;

&nbsp;

# Implicit Type Casting (Automatic)

Python automatically converts data types when needed.

&nbsp;

## Example

```py
x = 10
y = 3.5
z = x + y

print(type(z))
```

&nbsp;

&nbsp;

# Explicit Type Casting

You manually convert one type to another using functions.

| Function  | Converts to    |
| --------- | -------------- |
| `int()`   | Integer        |
| `float()` | Floating point |
| `str()`   | String         |
| `bool()`  | Boolean        |
| `list()`  | List           |
| `tuple()` | Tuple          |
| `set()`   | Set            |

&nbsp;

## Example

```py
# String to int
x = int("10")     # 10

# Float to int
y = int(3.8)      # 3

# Int to string
z = str(100)      # "100"

# String to float
a = float("4.5")  # 4.5

# List to set
s = set([1, 2, 2, 3])  # {1, 2, 3}
```

&nbsp;

&nbsp;

# Note

Invalid conversions will raise errors:

```py
int("abc")  # ❌ ValueError
```
