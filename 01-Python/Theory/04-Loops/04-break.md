# Overview

- [Overview](#overview)
- [`break` statement](#break-statement)
- [Works with:](#works-with)
- [Syntax](#syntax)
- [Example](#example)
  - [Example 1: Stop a `for` loop early](#example-1-stop-a-for-loop-early)
  - [Example 2: `while` loop with `break`](#example-2-while-loop-with-break)
  - [Use Case](#use-case)

&nbsp;

&nbsp;

&nbsp;

# `break` statement

The `break` statement is used to exit a loop immediately, even if the loop condition is still `True`.

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
    break
```

&nbsp;

&nbsp;

# Example

## Example 1: Stop a `for` loop early

```python
for i in range(10):
    if i == 5:
        break
    print(i)
```

The loop stops when i == 5.

&nbsp;

&nbsp;

## Example 2: `while` loop with `break`

```python
while True:
    num = int(input("Enter a number (0 to stop): "))
    if num == 0:
        break
    print("You entered:", num)
```

This simulates a `do-while` loop.

&nbsp;

&nbsp;

## Use Case

- Exiting a loop when a condition is met
- Creating menu-based apps
- Searching until found, then stopping
