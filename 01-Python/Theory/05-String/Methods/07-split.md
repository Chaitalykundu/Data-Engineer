# Overview

- [Overview](#overview)
- [`split()` Method](#split-method)
- [Syntax:](#syntax)
  - [Parameters](#parameters)
- [Example:](#example)
  - [Example 1: Default split (space)](#example-1-default-split-space)
  - [Output](#output)
  - [Example 2: Limit number of splits](#example-2-limit-number-of-splits)
  - [Output](#output-1)
- [Key Points:](#key-points)

&nbsp;

&nbsp;

&nbsp;

# `split()` Method

The `.split()` method is used to break a string into a list based on a separator.

&nbsp;

&nbsp;

# Syntax

```python
string.split(separator, maxsplit)
```

&nbsp;

### Parameters

- **separator** (optional): Default is space
- **maxsplit** (optional): Limits number of splits

&nbsp;

&nbsp;

# Example

## Example 1: Default split (space)

```py
text = "Python is easy"
print(text.split())
```

&nbsp;

### Output

```md
['Python', 'is', 'easy']
```

&nbsp;

&nbsp;

## Example 2: Limit number of splits

```py
text = "one two three four"
print(text.split(" ", 1))
```

&nbsp;

### Output

```md
['one', 'two three four']
```

&nbsp;

&nbsp;

# Key Points

- Converts string → list
- Doesn’t change the original string
- Useful for breaking CSV lines, user input, sentences, etc.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
