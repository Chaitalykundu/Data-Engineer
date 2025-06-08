- [Overview](#overview)
- [Conditional statements](#conditional-statements)
- [Types of Conditional Statements:](#types-of-conditional-statements)

&nbsp;

&nbsp;

&nbsp;

# match-case Statement

The **match-case** statement is Python’s version of **switch-case**, used for pattern matching and handling multiple conditions more cleanly.

&nbsp;

&nbsp;

# Syntax

```py
match variable:
    case value1:
        # code block
    case value2:
        # code block
    case _:
        # default block (like 'else')
```

&nbsp;

`_` is the wildcard (default case if nothing matches).

&nbsp;

&nbsp;

# Example

```py
no_of_day = int(input("Enter the number of the day (1-7): "))

match no_of_day:
    case 1:
        print("Monday")
    case 2:
        print("Tuesday")
    case 3:
        print("Wednesday")
    case 4:
        print("Thursday")
    case 5:
        print("Friday")
    case 6:
        print("Saturday")
    case 7:
        print("Sunday")
    case _:
        print("Invalid input. Please enter a number between 1 and 7.")
```

&nbsp;

&nbsp;

# Match Multiple Values Together

```py
fruit = "apple"

match fruit:
    case "apple" | "banana" | "mango":
        print("It's a common fruit.")
    case _:
        print("Uncommon fruit.")
```

&nbsp;

&nbsp;

# Notes

- match checks the value of the variable.

- `case _`: is like the default in other languages.

- Only available in Python 3.10+

&nbsp;

&nbsp;

# Use Case

- Replacing multiple if-elif-else

- Cleaner syntax for menus, options, day-checkers, etc.
