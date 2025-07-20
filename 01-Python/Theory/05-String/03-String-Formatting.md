# Overview

- [Overview](#overview)
- [String formatting](#string-formatting)
- [1. Old-style formatting (% operator)](#1-old-style-formatting--operator)
  - [Format specifiers:](#format-specifiers)
- [2. `str.format()` method (Python 2.7+ and 3.x)](#2-strformat-method-python-27-and-3x)
  - [With positional and keyword arguments:](#with-positional-and-keyword-arguments)
  - [Formatting numbers:](#formatting-numbers)
- [3. f-Strings (Literal String Interpolation) – Python 3.6+](#3-f-strings-literal-string-interpolation--python-36)
  - [Formatting with f-strings:](#formatting-with-f-strings)
- [4. Template Strings (from string module — safer for user input)](#4-template-strings-from-string-module--safer-for-user-input)
- [Summary](#summary)

&nbsp;

&nbsp;

&nbsp;

# String formatting

String formatting allows you to insert variables and expressions into strings in a clean and readable way.

Python supports multiple ways to format strings

&nbsp;

&nbsp;

# 1. Old-style formatting (% operator)

```py
name = "Chaitaly"
age = 25
print("Hello, %s! You are %d years old." % (name, age))
```

&nbsp;

### Format specifiers

| Specifier | Meaning                     |
| --------- | --------------------------- |
| `%s`      | String                      |
| `%d`      | Integer                     |
| `%f`      | Float                       |
| `%.2f`    | Float with 2 decimal places |

&nbsp;

&nbsp;

# 2. `str.format()` method (Python 2.7+ and 3.x)

```py
name = "Chaitaly"
age = 25
print("Hello, {}! You are {} years old.".format(name, age))
```

&nbsp;

### With positional and keyword arguments

```py
print("Hello, {0}! You are {1} years old.".format(name, age))
print("Hello, {name}! You are {age} years old.".format(name="Chaitaly", age=25))
```

&nbsp;

### Formatting numbers

```py
pi = 3.14159
print("Pi rounded to 2 decimals: {:.2f}".format(pi))
```

&nbsp;

&nbsp;

# 3. f-Strings (Literal String Interpolation) – Python 3.6+

```py
name = "Chaitaly"
age = 25
print(f"Hello, {name}! You are {age} years old.")
```

&nbsp;

### Formatting with f-strings

```py
pi = 3.14159
print(f"Pi is approximately {pi:.2f}")
```

&nbsp;

&nbsp;

# 4. Template Strings (from string module — safer for user input)

```py
from string import Template

template = Template("Hello, $name! You are $age years old.")
result = template.substitute(name="Chaitaly", age=25)
print(result)
```

&nbsp;

✅ Use this when you're dealing with user input or building templates securely.

&nbsp;

&nbsp;

# Summary

| Method         | Version     | Use case                       |
| -------------- | ----------- | ------------------------------ |
| `%` formatting | Legacy      | Not recommended for new code   |
| `str.format()` | Python 2.7+ | Flexible, more readable        |
| `f-strings`    | Python 3.6+ | Cleanest, fastest, recommended |
| `Template`     | Any version | Secure input handling          |

&nbsp;

&nbsp;
