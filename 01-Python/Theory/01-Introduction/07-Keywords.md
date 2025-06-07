# Overview

- [Overview](#overview)
- [Keywords](#keywords)
- [List of Python Keywords (as of Python 3.10+)](#list-of-python-keywords-as-of-python-310)
- [Examples of Keywords in Use](#examples-of-keywords-in-use)
  - [Explanation](#explanation)
- [Notes](#notes)
- [Keywords](#keywords-1)

&nbsp;

&nbsp;

&nbsp;

# Keywords

Keywords are reserved words in Python that have special meaning and cannot be used as variable names.

&nbsp;

Keywords are case-sensitive (True ≠ true)

&nbsp;

&nbsp;

# List of Python Keywords (as of Python 3.10+)

```
False      await      else       import     pass
None       break      except     in         raise
True       class      finally    is         return
and        continue   for        lambda     try
as         def        from       nonlocal   while
assert     del        global     not        with
async      elif       if         or         yield
```

&nbsp;

&nbsp;

# Examples of Keywords in Use

```py
if True:
    print("This is true.")

for i in range(3):
    print(i)

def greet():
    return "Hello"
```

&nbsp;

### Explanation

Here True, for, in, def are keywords

`range` is a **built-in** function, not a keyword.

&nbsp;

&nbsp;

# Notes

You cannot use them as variable names:

```python
def = 5  # ❌ Invalid!
```

&nbsp;

&nbsp;

&nbsp;

# Keywords

| Keyword  | Description                                                                                           |
| -------- | ----------------------------------------------------------------------------------------------------- |
| and      | A logical operator                                                                                    |
| as       | To create an alias                                                                                    |
| assert   | For debugging                                                                                         |
| break    | To break out of a loop                                                                                |
| class    | To define a class                                                                                     |
| continue | To continue to the next iteration of a loop                                                           |
| def      | To define a function                                                                                  |
| del      | To delete an object                                                                                   |
| elif     | Used in conditional statements, same as else if                                                       |
| else     | Used in conditional statements                                                                        |
| except   | Used with exceptions, what to do when an exception occurs                                             |
| False    | Boolean value, result of comparison operations                                                        |
| finally  | Used with exceptions, a block of code that will be executed no matter if there is an exception or not |
| for      | To create a for loop                                                                                  |
| from     | To import specific parts of a module                                                                  |
| global   | To declare a global variable                                                                          |
| if       | To make a conditional statement                                                                       |
| import   | To import a module                                                                                    |
| in       | To check if a value is present in a list, tuple, etc.                                                 |
| is       | To test if two variables are equal                                                                    |
| lambda   | To create an anonymous function                                                                       |
| None     | Represents a null value                                                                               |
| nonlocal | To declare a non-local variable                                                                       |
| not      | A logical operator                                                                                    |
| or       | A logical operator                                                                                    |
| pass     | A null statement, a statement that will do nothing                                                    |
| raise    | To raise an exception                                                                                 |
| return   | To exit a function and return a value                                                                 |
| True     | Boolean value, result of comparison operations                                                        |
| try      | To make a try...except statement                                                                      |
| while    | To create a while loop                                                                                |
| with     | Used to simplify exception handling                                                                   |
| yield    | To return a list of values from a generator                                                           |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
