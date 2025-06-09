# Overview

- [Overview](#overview)
- [`pass` statement](#pass-statement)
- [Why use pass](#why-use-pass)
- [Example](#example)
  - [Example 1: Empty `if` block](#example-1-empty-if-block)
  - [Example 2: Empty function](#example-2-empty-function)
  - [Example 3: Empty class](#example-3-empty-class)

&nbsp;

&nbsp;

&nbsp;

# `pass` statement

The `pass` statement is a placeholder.

It does nothing when executed.

&nbsp;

&nbsp;

# Why use pass

- To create empty blocks of code where Python expects a statement
- Common during code planning or to avoid syntax errors

&nbsp;

&nbsp;

# Example

## Example 1: Empty `if` block

```python
x = 5

if x > 0:
    pass  # TODO: logic will be added later
else:
    print("x is zero or negative")
```

No error, program runs fine.

&nbsp;

&nbsp;

## Example 2: Empty function

```python
def future_feature():
    pass
```

Used when you’re defining a function but haven’t written the logic yet.

&nbsp;

&nbsp;

## Example 3: Empty class

```python
class MyClass:
    pass
```

&nbsp;

&nbsp;
