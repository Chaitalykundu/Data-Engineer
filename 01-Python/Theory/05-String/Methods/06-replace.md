# Overview

- [Overview](#overview)
- [`replace()` Method](#replace-method)
- [Syntax:](#syntax)
  - [Parameters](#parameters)
- [Example:](#example)
  - [Example 1: Replace all](#example-1-replace-all)
  - [Output](#output)
  - [Example 2: Replace only once](#example-2-replace-only-once)
  - [Output](#output-1)
- [Key Points:](#key-points)

&nbsp;

&nbsp;

&nbsp;

# `replace()` Method

The `.replace()` method is used to replace parts of a string with something else.

&nbsp;

&nbsp;

# Syntax

```python
string.replace(old, new, count)
```

&nbsp;

### Parameters

- **old**: Substring to be replaced
- **new**: Substring to replace with
- **count** (optional): Number of occurrences to replace

&nbsp;

&nbsp;

# Example

## Example 1: Replace all

```py
text = "I like Java. Java is powerful."
print(text.replace("Java", "Python"))
```

&nbsp;

### Output

```md
I like Python. Python is powerful.
```

&nbsp;

&nbsp;

## Example 2: Replace only once

```py
text = "apple, apple, apple"
print(text.replace("apple", "banana", 1))
```

&nbsp;

### Output

```md
banana, apple, apple
```

&nbsp;

&nbsp;

# Key Points

- Case-sensitive
- Doesn’t change the original string
- Useful for cleaning or updating text

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
