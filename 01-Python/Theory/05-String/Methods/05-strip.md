# Overview

- [Overview](#overview)
- [`title()` Method](#title-method)
- [Syntax:](#syntax)
- [Example:](#example)
  - [Example 1: Remove spaces](#example-1-remove-spaces)
    - [Output](#output)
  - [Example 2: Remove specific characters](#example-2-remove-specific-characters)
    - [Output](#output-1)
- [Key Points:](#key-points)
- [Bonus](#bonus)

&nbsp;

&nbsp;

&nbsp;

# `title()` Method

The `.strip()` method is used to remove leading and trailing whitespace (or specific characters) from a string.

&nbsp;

&nbsp;

# Syntax

```python
string.strip()             # Removes spaces, tabs, and newlines
string.strip(chars)        # Removes specified characters
```

&nbsp;

&nbsp;

# Example

## Example 1: Remove spaces

```py
text = "   hello world   "
print(text.strip())
```

&nbsp;

### Output

```md
hello world
```

&nbsp;

&nbsp;

## Example 2: Remove specific characters

```py
text = "///hello///"
print(text.strip("/"))
```

&nbsp;

### Output

```md
hello
```

&nbsp;

&nbsp;

# Key Points

- Removes from both ends (not the middle).

- Does not modify the original string.

- Use `.lstrip()` for left-side only, `.rstrip()` for right-side only.

&nbsp;

&nbsp;

# Bonus

```py
print("   data   ".lstrip())  # Removes only from left
print("   data   ".rstrip())  # Removes only from right
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
