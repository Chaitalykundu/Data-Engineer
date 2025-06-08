# Overview

- [Overview](#overview)
- [while Loop](#while-loop)
- [Syntax:](#syntax)
- [Example](#example)
  - [Example 1: Print 0 to 4](#example-1-print-0-to-4)
  - [Example 2: Loop over a list](#example-2-loop-over-a-list)
  - [Example 3: Loop through a string](#example-3-loop-through-a-string)
- [Important](#important)
- [Use when:](#use-when)

&nbsp;

&nbsp;

&nbsp;

# while Loop

A `while` loop runs as long as a given condition is `True`.

&nbsp;

&nbsp;

# Syntax

```py
while condition:
    # block of code
```

&nbsp;

&nbsp;

# Example

## Example 1: Print 0 to 4

```python
i = 0
while i < 5:
    print(i)
    i += 1
```

&nbsp;

&nbsp;

## Example 2: Loop over a list

```python
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)
```

&nbsp;

&nbsp;

## Example 3: Loop through a string

```python
for char in "hello":
    print(char)
```

&nbsp;

&nbsp;

# Important

- Be sure to update the variable (i += 1), or you’ll get an infinite loop.

&nbsp;

&nbsp;

# Use when

- You don’t know how many times to loop.
- You want to run until a condition is no longer true.
