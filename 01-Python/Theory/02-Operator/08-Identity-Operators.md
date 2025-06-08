# Overview

- [Overview](#overview)
- [Identity Operators](#identity-operators)
- [`is` vs `==`](#is-vs-)

&nbsp;

&nbsp;

&nbsp;

# Identity Operators

Identity operators are used to compare the memory locations of two objects — i.e., whether they are the **same object in memory, not just equal in value**.

&nbsp;

Identity operators are `is`, `is not`

&nbsp;

| Operator | Description                                                      | Example      | Result       |
| -------- | ---------------------------------------------------------------- | ------------ | ------------ |
| `is`     | Returns `True` if both variables **point to the same object**    | `a is b`     | `True/False` |
| `is not` | Returns `True` if both variables **do not point to same object** | `a is not b` | `True/False` |

&nbsp;

&nbsp;

# `is` vs `==`

| Expression | Compares     | Example          | Meaning                             |
| ---------- | ------------ | ---------------- | ----------------------------------- |
| `x == y`   | **Values**   | `[1,2] == [1,2]` | Are the contents the same?          |
| `x is y`   | **Identity** | `[1,2] is [1,2]` | Are they the same object in memory? |

&nbsp;

&nbsp;

&nbsp;
