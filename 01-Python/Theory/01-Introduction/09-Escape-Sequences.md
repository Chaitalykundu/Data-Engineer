# Overview

- [Overview](#overview)
- [Escape Sequences](#escape-sequences)
- [Common Escape Sequences](#common-escape-sequences)
- [Example](#example)
- [Note](#note)

&nbsp;

&nbsp;

&nbsp;

# Escape Sequences

Escape sequences are special characters starting with a backslash (`\`) that let you include characters in strings that are otherwise hard or impossible to type directly.

&nbsp;

&nbsp;

# Common Escape Sequences

| Escape | Description             | Example Code              | Output           |
| ------ | ----------------------- | ------------------------- | ---------------- |
| `\n`   | New line                | `print("Hello\nWorld")`   | Hello<br>World   |
| `\t`   | Tab (horizontal space)  | `print("Hello\tWorld")`   | Hello World      |
| `\\`   | Backslash (`\`)         | `print("C:\\path")`       | C:\path          |
| `\'`   | Single quote            | `print('It\'s OK')`       | It's OK          |
| `\"`   | Double quote            | `print("He said \"Hi\"")` | He said "Hi"     |
| `\r`   | Carriage return         | `print("123\rABC")`       | **ABC**          |
| `\b`   | Backspace               | `print("Helloo\b")`       | Hello            |
| `\a`   | Bell (alert sound)      | `print("\a")`             | (Plays sound)    |
| `\f`   | Form feed (rarely used) | `print("One\fTwo")`       | One→FormFeed→Two |

&nbsp;

&nbsp;

# Example

```py
print("Name:\tChaitaly\nLocation:\tIndia")
```

&nbsp;

&nbsp;

# Note

Always use raw strings (`r"text"`) if you want to avoid processing escape sequences:

```python
print(r"C:\newfolder\text")  # Prints as-is: C:\newfolder\text
```

&nbsp;

&nbsp;
