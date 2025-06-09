# Overview

- [Overview](#overview)
- [Popular String Methods](#popular-string-methods)

&nbsp;

&nbsp;

&nbsp;

# Popular String Methods

| Method            | Description                            | Example                                   |
| ----------------- | -------------------------------------- | ----------------------------------------- |
| `upper()`         | Converts to uppercase                  | `"hello".upper()` → `"HELLO"`             |
| `lower()`         | Converts to lowercase                  | `"HeLLo".lower()` → `"hello"`             |
| `capitalize()`    | Capitalizes first letter               | `"python".capitalize()` → `"Python"`      |
| `title()`         | Capitalizes each word                  | `"hello world".title()` → `"Hello World"` |
| `strip()`         | Removes spaces from both ends          | `"  hello  ".strip()` → `"hello"`         |
| `replace(a, b)`   | Replaces `a` with `b`                  | `"apple".replace("a", "A")` → `"Apple"`   |
| `split()`         | Splits string into list                | `"a,b,c".split(",")` → `['a','b','c']`    |
| `join()`          | Joins list into string                 | `".".join(['a','b'])` → `"a.b"`           |
| `find(sub)`       | Finds index of substring               | `"hello".find("e")` → `1`                 |
| `count(sub)`      | Counts occurrences of substring        | `"banana".count("a")` → `3`               |
| `startswith(sub)` | Checks if string starts with substring | `"hello".startswith("he")` → `True`       |
| `endswith(sub)`   | Checks if string ends with substring   | `"hello".endswith("lo")` → `True`         |
| `isdigit()`       | Checks if string has only digits       | `"123".isdigit()` → `True`                |
| `isalpha()`       | Checks if string has only letters      | `"abc".isalpha()` → `True`                |
