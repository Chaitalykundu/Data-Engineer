- [Overview](#overview)
- [Conditional statements](#conditional-statements)
- [Types of Conditional Statements:](#types-of-conditional-statements)

&nbsp;

&nbsp;

&nbsp;

# `elif` Statement

`elif` stands for "**else if**".

It is used to check multiple conditions in sequence.

&nbsp;

&nbsp;

# Syntax

```py
if condition1:
    # runs if condition1 is True
elif condition2:
    # runs if condition1 is False and condition2 is True
elif condition3:
    # runs if all above are False and condition3 is True
else:
    # runs if none of the conditions are True
```

&nbsp;

&nbsp;

# Example

```py
marks  = int (input("Enter your marks: "))

if marks >= 90 and marks <= 100:
    print("You got an A grade.")
elif marks >= 80 and marks < 90:
    print("You got a B grade.")
elif marks >= 70 and marks < 80:
    print("You got a C grade.")
elif marks >= 60 and marks < 70:
    print("You got a D grade.")
elif marks >= 50 and marks < 60:
    print("You got an E grade.")
elif marks >= 0 and marks < 50:
    print("You got a F grade! Study harder next time.")
else:
    print("Invalid marks entered. Please enter a value between 0 and 100.")
```

&nbsp;

&nbsp;

# Use Case

- Use `elif` when you need more than two choices.

- It avoids writing multiple `if-else` blocks.
