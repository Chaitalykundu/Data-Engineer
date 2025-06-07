# Overview

- [Overview](#overview)
- [User Input](#user-input)
- [Basic Syntax](#basic-syntax)
- [Example: Take Name as Input](#example-take-name-as-input)
  - [Output](#output)
- [Convert Input to Integer](#convert-input-to-integer)
  - [Syntax](#syntax)
  - [Example](#example)
    - [Output](#output-1)

&nbsp;

&nbsp;

&nbsp;

# User Input

The `input()` function is used to take input from the user as a string.

&nbsp;

&nbsp;

# Basic Syntax

```py
variable = input("Your message here: ")
```

&nbsp;

&nbsp;

# Example: Take Name as Input

```py
name = input("Enter your name: ")
print("Hello,", name)
```

&nbsp;

## Output

```yaml
Enter your name: Chaitaly
Hello, Chaitaly
```

&nbsp;

&nbsp;

# Convert Input to Integer

- `input()` always returns a string.

- You must convert it to `int`, `float`, etc., using type casting.

&nbsp;

&nbsp;

## Syntax

```py
variable = int(input("Your message here: "))
```

&nbsp;

&nbsp;

## Example

```py
age = int(input("Enter your age: "))
print("You are", age, "years old.")
```

&nbsp;

### Output

```yaml
Enter your age: 34
You are 34 years old.
```

&nbsp;

&nbsp;

&nbsp;
