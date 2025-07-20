# Overview

- [Overview](#overview)
- [Datatypes](#datatypes)
- [Numeric Types](#numeric-types)
  - [Note](#note)
- [String Type](#string-type)
- [Boolean Type](#boolean-type)
- [Sequence Types](#sequence-types)
- [Set Types](#set-types)
- [Mapping Type](#mapping-type)
- [None Type](#none-type)

&nbsp;

&nbsp;

&nbsp;

# Datatypes

Data types are types of data stored in a variable.

&nbsp;

There are two types of datatypes -------

**Primitive Data Types**: int, float, bool, str

**Primitive Data Types**: list, tuple, dict, set

&nbsp;

&nbsp;

| **Category** | **Data Type** | **Example**                 | **Description**               |
| ------------ | ------------- | --------------------------- | ----------------------------- |
| Numeric      | `int`         | `x = 10`                    | Whole numbers                 |
|              | `float`       | `y = 3.14`                  | Decimal numbers               |
|              | `complex`     | `z = 2 + 3j`                | Complex numbers               |
| Text         | `str`         | `name = "Alice"`            | Sequence of characters (text) |
| Boolean      | `bool`        | `is_valid = True`           | True or False values          |
| Sequence     | `list`        | `nums = [1, 2, 3]`          | Ordered, mutable collection   |
|              | `tuple`       | `point = (10, 20)`          | Ordered, immutable collection |
|              | `range`       | `r = range(5)`              | Sequence of numbers           |
| Set          | `set`         | `s = {1, 2, 3}`             | Unordered, no duplicates      |
|              | `frozenset`   | `fs = frozenset([1, 2, 3])` | Immutable set                 |
| Mapping      | `dict`        | `person = {"name": "John"}` | Key-value pairs               |

&nbsp;

&nbsp;

&nbsp;

# Numeric Types

1. **int**: Integer values

   ```py
   x = 10
   ```

2. **float**: Decimal numbers

   ```py
    y = 3.14
   ```

3. **complex**: Complex numbers

   ```py
    z = 2 + 3j
   ```

&nbsp;

### Note

If we write a number computer will ignores that underscore and return us the number itself. The underscore is used for code readability.

```py
print(123_456_789)
```

**Output:** 123456789

&nbsp;

&nbsp;

# String Type

- **str**: Text (sequence of characters)

  ```py
  name = "Alice"
  ```

&nbsp;

&nbsp;

# Boolean Type

- **bool**: True or False

  ```PY
  is_valid = True
  ```

&nbsp;

&nbsp;

# Sequence Types

1. **list**: Ordered, changeable

   ```py
   fruits = ["apple", "banana", "cherry"]
   ```

2. **tuple**: Ordered, unchangeable

   ```py
   point = (10, 20)
   ```

3. **range**: Sequence of numbers

   ```py
   r = range(5)
   ```

&nbsp;

&nbsp;

# Set Types

1. **set**: Unordered, unique items

   ```py
   s = {1, 2, 3}
   ```

2. **frozenset**: Immutable set

   ```py
   fs = frozenset([1, 2, 3])
   ```

&nbsp;

&nbsp;

# Mapping Type

- **dict**: Key-value pairs

  ```py
  student = {"name": "Alice", "age": 21}
  ```

&nbsp;

&nbsp;

# None Type

- **None**: Represents a null or empty value

  ```py
  x = None
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

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
