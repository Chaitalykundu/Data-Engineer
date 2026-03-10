# Overview

- [Overview](#overview)
- [String](#string)
- [How to define a string](#how-to-define-a-string)
  - [Single line string](#single-line-string)
    - [Syntax](#syntax)
    - [Example](#example)
  - [Multi line string](#multi-line-string)
    - [Syntax](#syntax-1)
    - [Example](#example-1)
- [String indexing / Accessing characters](#string-indexing--accessing-characters)
- [String Concatenation](#string-concatenation)
- [String Repetition](#string-repetition)

&nbsp;

&nbsp;

&nbsp;

# String

A string is a sequence of characters enclosed in quotes.

Strings are **immutable**, which means once a string is created, it cannot be changed. If you try to modify it, Python actually creates a new string instead of changing the original one.

&nbsp;

&nbsp;

# How to define a string

## Single line string

### Syntax

```py
variable_name = "string_value"
# or
variable_name = 'string_value'
```

&nbsp;

### Example

```py
name = "Alice"
greeting = 'Hello'
```

&nbsp;

## Multi line string

### Syntax

```py
variable_name = '''string_value'''
variable_name = """string_value"""
```

&nbsp;

### Example

```py
paragraph = """This is
a multi-line string."""
# or
paragraph1 = """This is also

a multi-line string."""
```

&nbsp;

&nbsp;

# String indexing / Accessing characters

String indexing means accessing individual characters in a string using their position (index).

&nbsp;

```py
text = "Python"
print(text[0])   # P
print(text[-1])  # n (last character)
```

&nbsp;

Always remember that indexing starts at `0`, and the maximum valid index is `len(sequence) - 1`.

&nbsp;

&nbsp;

# String Concatenation

```py
first = "Hello"
second = "World"
print(first + " " + second)  # Hello World
```

&nbsp;

&nbsp;

# String Repetition

```py
print("Hi! " * 3)  # Hi! Hi! Hi!
```

&nbsp;

&nbsp;

&nbsp;
