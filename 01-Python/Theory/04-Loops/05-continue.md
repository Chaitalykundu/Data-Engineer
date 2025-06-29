# Overview

- [Overview](#overview)
- [`continue` statement](#continue-statement)
- [Works with:](#works-with)
- [Syntax](#syntax)
- [Example](#example)
  - [Example 1: Skip even numbers](#example-1-skip-even-numbers)
  - [Example 2: Skip on condition in `while` loop](#example-2-skip-on-condition-in-while-loop)
  - [Use Case](#use-case)

&nbsp;

&nbsp;

&nbsp;

# `continue` statement

The `continue` statement is used to skip the current loop iteration and move to the next one.

&nbsp;

&nbsp;

# Works with

- `for` loops
- `while` loops

&nbsp;

&nbsp;

# Syntax

```py
for condition:
    # block of code
    continue
```

&nbsp;

&nbsp;

# Example

## Example 1: Skip even numbers

```python
for i in range(1, 6):
    if i % 2 == 0:
        continue
    print(i)
```

Even numbers (2, 4) are skipped.

&nbsp;

&nbsp;

## Example 2: Skip on condition in `while` loop

```python
i = 0
while i < 5:
    i += 1
    if i == 3:
        continue
    print(i)
```

When `i == 3`, `print(i)` is skipped.

&nbsp;

&nbsp;

## Use Case

- Skip invalid inputs
- Skip certain items in a list
- Filter or ignore specific conditions during iteration
