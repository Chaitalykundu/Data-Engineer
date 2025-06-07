# Overview

- [Overview](#overview)
- [Comments](#comments)
- [Types of Comments](#types-of-comments)
- [Single-line Comment](#single-line-comment)
- [2. Multi-line Comment (2 common methods)](#2-multi-line-comment-2-common-methods)
  - [a. Using `#` on multiple lines](#a-using--on-multiple-lines)
  - [b. Using triple quotes `'''` or `"""` (not a real comment, but works)](#b-using-triple-quotes--or--not-a-real-comment-but-works)
- [Best Practice](#best-practice)

&nbsp;

&nbsp;

&nbsp;

# Comments

Comments are lines in Python code that are not executed.

They are used to explain code, improve readability, or disable parts of code during testing.

&nbsp;

&nbsp;

# Types of Comments

1. Single-line Comment
2. Multi-line Comment

&nbsp;

&nbsp;

# Single-line Comment

- Use the `#` symbol
- Everything after `#` is ignored by Python

  ```py
  # This is a single-line comment
  x = 5  # This sets x to 5
  ```

&nbsp;

&nbsp;

# 2. Multi-line Comment (2 common methods)

a. Using `#` on multiple lines
b. Using triple quotes `'''` or `"""` (not a real comment, but works)

&nbsp;

&nbsp;

## a. Using `#` on multiple lines

```py
# This is a multi-line comment
# written using multiple
# single-line comment symbols
```

&nbsp;

## b. Using triple quotes `'''` or `"""` (not a real comment, but works)

```python
'''
This is a multi-line string
which can be used as a multi-line comment
'''
```

&nbsp;

⚠️ Technically, triple quotes define a multi-line string, but if it’s not assigned to a variable, Python ignores it.

&nbsp;

&nbsp;

# Best Practice

- Use `#` for short explanations

- Use docstrings (`""" """)` inside functions/classes to describe their purpose
