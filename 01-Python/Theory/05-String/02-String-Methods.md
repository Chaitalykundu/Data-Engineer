# Overview

- [Overview](#overview)
- [Popular String Methods](#popular-string-methods)
- [1️⃣ Case Conversion Methods](#1️⃣-case-conversion-methods)
- [3️⃣ Checking / Boolean Methods](#3️⃣-checking--boolean-methods)
- [4️⃣ String Modification Methods](#4️⃣-string-modification-methods)
- [5️⃣ Splitting and Joining Methods](#5️⃣-splitting-and-joining-methods)
- [6️⃣ Alignment Methods](#6️⃣-alignment-methods)
- [7️⃣ Partition Methods](#7️⃣-partition-methods)
- [8️⃣ Encoding Method](#8️⃣-encoding-method)
- [⭐ Most Important Methods for Interviews](#-most-important-methods-for-interviews)

&nbsp;

&nbsp;

&nbsp;

# Popular String Methods

| Method            | Description                            | Example                                              |
| ----------------- | -------------------------------------- | ---------------------------------------------------- |
| `upper()`         | Converts to uppercase                  | `"hello".upper()` → `"HELLO"`                        |
| `lower()`         | Converts to lowercase                  | `"HeLLo".lower()` → `"hello"`                        |
| `capitalize()`    | Capitalizes first letter               | `"python is Easy".capitalize()` → `"Python is easy"` |
| `title()`         | Capitalizes each word                  | `"hello world".title()` → `"Hello World"`            |
| `strip()`         | Removes spaces from both ends          | `"  hello  ".strip()` → `"hello"`                    |
| `replace(a, b)`   | Replaces `a` with `b`                  | `"apple".replace("a", "A")` → `"Apple"`              |
| `split()`         | Splits string into list                | `"a,b,c".split(",")` → `['a','b','c']`               |
| `join()`          | Joins list into string                 | `".".join(['a','b'])` → `"a.b"`                      |
| `find(sub)`       | Finds index of substring               | `"hello".find("e")` → `1`                            |
| `count(sub)`      | Counts occurrences of substring        | `"banana".count("a")` → `3`                          |
| `startswith(sub)` | Checks if string starts with substring | `"hello".startswith("he")` → `True`                  |
| `endswith(sub)`   | Checks if string ends with substring   | `"hello".endswith("lo")` → `True`                    |
| `isdigit()`       | Checks if string has only digits       | `"123".isdigit()` → `True`                           |
| `isalpha()`       | Checks if string has only letters      | `"abc".isalpha()` → `True`                           |

&nbsp;

&nbsp;

&nbsp;

# 1️⃣ Case Conversion Methods

Used to change the letter case of a string.

| Method         | Description                                     | Example                                        |
| -------------- | ----------------------------------------------- | ---------------------------------------------- |
| `upper()`      | Converts string to uppercase                    | `"hello".upper()` → `"HELLO"`                  |
| `lower()`      | Converts string to lowercase                    | `"HELLO".lower()` → `"hello"`                  |
| `title()`      | Converts first letter of each word to uppercase | `"hello world".title()` → `"Hello World"`      |
| `capitalize()` | Capitalizes first letter of string              | `"hello world".capitalize()` → `"Hello world"` |
| `swapcase()`   | Swaps uppercase to lowercase and vice versa     | `"Hello".swapcase()` → `"hELLO"`               |
| `casefold()`   | Aggressive lowercase (used for comparisons)     | `"HELLO".casefold()`                           |

&nbsp;

&nbsp;

2️⃣ Searching Methods

Used to find characters or substrings.

| Method     | Description                               | Example                     |
| ---------- | ----------------------------------------- | --------------------------- |
| `find()`   | Returns index of substring                | `"python".find("t")` → `2`  |
| `rfind()`  | Searches from right side                  | `"python".rfind("o")`       |
| `index()`  | Same as find but gives error if not found | `"python".index("t")`       |
| `rindex()` | Reverse index search                      | `"python".rindex("o")`      |
| `count()`  | Counts occurrences                        | `"banana".count("a")` → `3` |

&nbsp;

&nbsp;

# 3️⃣ Checking / Boolean Methods

Used to validate string content.

| Method      | Description                 | Example                   |
| ----------- | --------------------------- | ------------------------- |
| `isalpha()` | Checks if only alphabets    | `"hello".isalpha()`       |
| `isdigit()` | Checks if only digits       | `"123".isdigit()`         |
| `isalnum()` | Checks if letters + numbers | `"abc123".isalnum()`      |
| `islower()` | Checks if lowercase         | `"hello".islower()`       |
| `isupper()` | Checks if uppercase         | `"HELLO".isupper()`       |
| `istitle()` | Checks title case           | `"Hello World".istitle()` |
| `isspace()` | Checks only spaces          | `"   ".isspace()`         |

&nbsp;

&nbsp;

# 4️⃣ String Modification Methods

| Method      | Description               | Example                    |
| ----------- | ------------------------- | -------------------------- |
| `replace()` | Replaces substring        | `"hello".replace("h","j")` |
| `strip()`   | Removes spaces both sides | `" hello ".strip()`        |
| `lstrip()`  | Removes left spaces       | `" hello".lstrip()`        |
| `rstrip()`  | Removes right spaces      | `"hello ".rstrip()`        |

&nbsp;

&nbsp;

# 5️⃣ Splitting and Joining Methods

| Method         | Description             | Example                       |
| -------------- | ----------------------- | ----------------------------- |
| `split()`      | Splits string into list | `"a,b,c".split(",")`          |
| `rsplit()`     | Splits from right side  | `"a,b,c".rsplit(",",1)`       |
| `splitlines()` | Splits by line break    | `"a\nb\nc".splitlines()`      |
| `join()`       | Joins list into string  | `" ".join(["hello","world"])` |

&nbsp;

&nbsp;

# 6️⃣ Alignment Methods

| Method     | Description        | Example                     |
| ---------- | ------------------ | --------------------------- |
| `center()` | Centers string     | `"hello".center(10)`        |
| `ljust()`  | Left align         | `"hello".ljust(10)`         |
| `rjust()`  | Right align        | `"hello".rjust(10)`         |
| `zfill()`  | Adds zeros to left | `"42".zfill(5)` → `"00042"` |

&nbsp;

&nbsp;

# 7️⃣ Partition Methods

| Method         | Description         | Example                         |
| -------------- | ------------------- | ------------------------------- |
| `partition()`  | Splits into 3 parts | `"hello-world".partition("-")`  |
| `rpartition()` | Splits from right   | `"hello-world".rpartition("-")` |

&nbsp;

&nbsp;

# 8️⃣ Encoding Method

| Method     | Description              |
| ---------- | ------------------------ |
| `encode()` | Converts string to bytes |

&nbsp;

&nbsp;

&nbsp;

# ⭐ Most Important Methods for Interviews

Focus especially on these:

- upper()
- lower()
- strip()
- replace()
- split()
- join()
- find()
- count()
- isalpha()
- isdigit()
- startswith()
- endswith()

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

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
