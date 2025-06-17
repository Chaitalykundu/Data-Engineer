# Overview

- [Overview](#overview)
- [`join()` Method](#join-method)
- [Syntax:](#syntax)
    - [Parameters](#parameters)
- [Example:](#example)
  - [Example 1: Join with space](#example-1-join-with-space)
    - [Output](#output)
  - [Example 2: Join with hyphen](#example-2-join-with-hyphen)
    - [Output](#output-1)
  - [Example 3: Join with newline](#example-3-join-with-newline)
    - [Output](#output-2)
- [Key Points:](#key-points)

&nbsp;

&nbsp;

&nbsp;

# `join()` Method

The `.join()` method is used to combine a list of strings into a single string, using a separator.

&nbsp;

&nbsp;

# Syntax:

```python
separator.join(iterable)
```

&nbsp;

### Parameters

- **separator**: String to place between items (like `" "`, `"-"`, or `","`)
- **iterable**: List or tuple of strings

&nbsp;

&nbsp;

# Example:

## Example 1: Join with space

```py
words = ["Python", "is", "fun"]
sentence = " ".join(words)
print(sentence)
```

&nbsp;

### Output

```md
Python is fun
```

&nbsp;

&nbsp;

## Example 2: Join with hyphen

```py
parts = ["2025", "06", "04"]
date = "-".join(parts)
print(date)
```

&nbsp;

### Output

```md
2025-06-04
```

&nbsp;

&nbsp;

## Example 3: Join with newline

```python
lines = ["Line1", "Line2", "Line3"]
print("\n".join(lines))
```

&nbsp;

### Output

```md
Line1
Line2
Line3
```

&nbsp;

&nbsp;

# Key Points:

- Opposite of `.split()`
- Works only with iterables of strings
- Doesn’t modify the original list

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
