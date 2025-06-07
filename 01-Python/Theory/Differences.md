# Overview

- [Overview](#overview)
- [`print("You are", age, "years old.")` vs `print("I am " + age + " years old.")`](#printyou-are-age-years-old-vs-printi-am---age---years-old)
  - [Summary](#summary)

&nbsp;

&nbsp;

&nbsp;

# `print("You are", age, "years old.")` vs `print("I am " + age + " years old.")`

| Point                    | `print("You are", age, "years old.")`   | `print("I am " + age + " years old.")`    |
| ------------------------ | --------------------------------------- | ----------------------------------------- |
| **Data Type Handling**   | Automatically converts non-strings      | Requires all parts to be strings          |
| **Type Casting Needed?** | ❌ No (Python auto-converts `age`)      | ✅ Yes (`age` must be a string)           |
| **Output Formatting**    | Adds **spaces** between each item       | Concatenates as a **single string**       |
| **Safer for numbers**    | Yes – works even if `age` is an integer | No – gives error if `age` is not a string |

&nbsp;

## Summary

- Use `commas` in `print()` when combining different data types.

- Use `+` only when all parts are strings (or after type casting).

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
