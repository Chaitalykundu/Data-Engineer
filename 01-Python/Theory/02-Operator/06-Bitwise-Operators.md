# Overview

- [Overview](#overview)
- [Bitwise Operators](#bitwise-operators)
- [Binary Reference](#binary-reference)
- [Notes:](#notes)

&nbsp;

&nbsp;

&nbsp;

# Bitwise Operators

Bitwise operators are used to perform bit-level operations on integers.

They work on the binary representations of numbers.

&nbsp;

| Operator | Name        | Description                                           | Example (`a = 5`, `b = 3`)         | Result (Binary) |         |             |     |
| -------- | ----------- | ----------------------------------------------------- | ---------------------------------- | --------------- | ------- | ----------- | --- |
| `&`      | AND         | 1 if **both bits** are 1                              | `5 & 3` → `101 & 011` → `001`      | `1`             |         |             |     |
| \`       | \`          | OR                                                    | 1 if **either bit** is 1           | \`5             | 3`→`101 | 011`→`111\` | `7` |
| `^`      | XOR         | 1 if **only one bit** is 1 (not both)                 | `5 ^ 3` → `101 ^ 011` → `110`      | `6`             |         |             |     |
| `~`      | NOT         | Inverts each bit (1→0, 0→1), result is `-(n+1)`       | `~5` → `~(00000101)` → `-6`        | `-6`            |         |             |     |
| `<<`     | Left Shift  | Shifts bits left by given number of positions (×2^n)  | `5 << 1` → `00000101` → `00001010` | `10`            |         |             |     |
| `>>`     | Right Shift | Shifts bits right by given number of positions (÷2^n) | `5 >> 1` → `00000101` → `00000010` | `2`             |         |             |     |

&nbsp;

&nbsp;

# Binary Reference

| Decimal | Binary |
| ------- | ------ |
| 5       | 0101   |
| 3       | 0011   |

&nbsp;

&nbsp;

# Notes

- Bitwise operations are faster and used in low-level programming, image processing, compression, etc.

- Negative numbers are stored in 2’s complement in Python, hence `~n = -(n+1)`.
