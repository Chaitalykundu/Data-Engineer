# Overview

- [Overview](#overview)
- [Operators](#operators)
- [Types of Operators](#types-of-operators)
- [Operator Precedence](#operator-precedence)
  - [Quick Rule:](#quick-rule)

&nbsp;

&nbsp;

&nbsp;

# Operators

Operators are symbols or keywords used to perform operations on variables and values.

&nbsp;

&nbsp;

# Types of Operators

| Operator Type           | Description                                | Example                             |                       |
| ----------------------- | ------------------------------------------ | ----------------------------------- | --------------------- |
| 1. Arithmetic Operators | Perform mathematical operations            | `+`, `-`, `*`, `/`, `%`, `//`, `**` |                       |
| 2. Comparison Operators | Compare values                             | `==`, `!=`, `>`, `<`, `>=`, `<=`    |                       |
| 3. Assignment Operators | Assign and update variable values          | `=`, `+=`, `-=`, `*=`, `/=`, etc.   |                       |
| 4. Logical Operators    | Combine boolean expressions                | `and`, `or`, `not`                  |                       |
| 5. Bitwise Operators    | Perform bit-level operations               | `&`, \`                             | `,`^`,`\~`,`<<`,`>>\` |
| 6. Membership Operators | Test presence in a sequence                | `in`, `not in`                      |                       |
| 7. Identity Operators   | Compare memory locations (object identity) | `is`, `is not`                      |                       |

&nbsp;

&nbsp;

&nbsp;

# Operator Precedence

| Precedence  | Operator(s)                                                      | Description                       | Associativity     |               |
| ----------- | ---------------------------------------------------------------- | --------------------------------- | ----------------- | ------------- |
| 1 (Highest) | `()`                                                             | Parentheses                       | Left to Right     |               |
| 2           | `**`                                                             | Exponentiation                    | **Right to Left** |               |
| 3           | `+x`, `-x`, `~x`                                                 | Unary plus, minus, bitwise NOT    | Right to Left     |               |
| 4           | `*`, `/`, `//`, `%`                                              | Multiplication, Division, Modulus | Left to Right     |               |
| 5           | `+`, `-`                                                         | Addition, Subtraction             | Left to Right     |               |
| 6           | `<<`, `>>`                                                       | Bitwise Shift                     | Left to Right     |               |
| 7           | `&`                                                              | Bitwise AND                       | Left to Right     |               |
| 8           | `^`                                                              | Bitwise XOR                       | Left to Right     |               |
| 9           | \`                                                               | \`                                | Bitwise OR        | Left to Right |
| 10          | `==`, `!=`, `>`, `<`, `>=`, `<=`, `is`, `is not`, `in`, `not in` | Comparisons                       | Left to Right     |               |
| 11          | `not`                                                            | Logical NOT                       | Right to Left     |               |
| 12          | `and`                                                            | Logical AND                       | Left to Right     |               |
| 13          | `or`                                                             | Logical OR                        | Left to Right     |               |
| 14 (Lowest) | `=`, `+=`, `-=`, `*=`, `/=`, `//=`, `%=`, `**=`, etc.            | Assignment operators              | Right to Left     |               |

&nbsp;

&nbsp;

## Quick Rule

Parentheses > Exponents > Unary > Multiplicative > Additive > ... > Assignment

&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
