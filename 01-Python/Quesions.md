# Overview

- [Overview](#overview)
- [Questions](#questions)
  - [String](#string)
    - [Top 10 Python String Interview Questions](#top-10-python-string-interview-questions)
- [Answer](#answer)
  - [String](#string-1)
    - [1. What is String Indexing](#1-what-is-string-indexing)
    - [2. What is immutable](#2-what-is-immutable)
    - [3. Find the output](#3-find-the-output)
    - [4. Suppose a string "python" is given and you are told to change the 1st letter to "J". How will you do this](#4-suppose-a-string-python-is-given-and-you-are-told-to-change-the-1st-letter-to-j-how-will-you-do-this)
    - [5. Suppose a string "python" is given and you are told to change the letter "th" to "ht". How will you do this](#5-suppose-a-string-python-is-given-and-you-are-told-to-change-the-letter-th-to-ht-how-will-you-do-this)
    - [6. What is the difference between `+` and `,`?](#6-what-is-the-difference-between--and-)
- [Udemy](#udemy)
  - [1. What is the role of indentation in Python?](#1-what-is-the-role-of-indentation-in-python)

&nbsp;

&nbsp;

&nbsp;

# Questions

## String

1. What is String Indexing
2. What is immutable
3. Find the output

   ```py
    name = "Python"
    name[0] = "J"
   ```

4. Suppose a string "python" is given and you are told to change the 1st letter to "J". How will you do this

5. Suppose a string "python" is given and you are told to change the letter "th" to "ht". How will you do this

6. What is the difference between `+` and `,`?

### Top 10 Python String Interview Questions

- 1️⃣ What is string immutability in Python?
- 2️⃣ Difference between find() and index()
- 3️⃣ Difference between split() and join()
- 4️⃣ What is string slicing?
- 5️⃣ How does string memory allocation work?
- 6️⃣ Difference between == and is in strings
- 7️⃣ What is string interning?
- 8️⃣ Difference between strip(), lstrip(), rstrip()
- 9️⃣ What is f-string in Python?
- 🔟 Difference between list and string mutability

&nbsp;

&nbsp;

# Answer

## String

### 1. What is String Indexing

String indexing means accessing individual characters in a string using their position (index).

&nbsp;

&nbsp;

### 2. What is immutable

Immutable means **unchangeable** — something that cannot be altered after it is created

In python, a string is immutable — if you “change” it, you actually create a new string.

```py
name = "John"
name = name + " Smith"   # This creates a new string
```

&nbsp;

&nbsp;

### 3. Find the output

```py
 name = "Python"
 name[0] = "J"
```

**Output**:
TypeError: 'str' object does not support item assignment

This happens because strings cannot be modified directly.

&nbsp;

&nbsp;

### 4. Suppose a string "python" is given and you are told to change the 1st letter to "J". How will you do this

```py
str = "python"

str  = "J" + str[1:]
print (str)
```

&nbsp;

&nbsp;

### 5. Suppose a string "python" is given and you are told to change the letter "th" to "ht". How will you do this

```py
str1 = "python"
str1 = str1[:2] + "ht" + str1[4:]

print(str1)
```

&nbsp;

&nbsp;

### 6. What is the difference between `+` and `,`?

| Feature                   | `+` Operator        | `,` (Comma)              |
| ------------------------- | ------------------- | ------------------------ |
| Purpose                   | Concatenate strings | Separate multiple values |
| Result                    | Creates one string  | Prints multiple objects  |
| Type requirement          | Both must be string | Can mix types            |
| Space added automatically | ❌ No               | ✅ Yes                   |
| Works outside `print()`   | ✅ Yes              | ❌ No                    |
|                           |                     |                          |

&nbsp;

&nbsp;
&nbsp;

&nbsp;

&nbsp;

&nbsp;
&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Udemy

### 1. What is the role of indentation in Python?

```md
It helps python interpret which lines are inside a block of code
```
