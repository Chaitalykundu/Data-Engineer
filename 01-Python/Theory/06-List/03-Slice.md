# Overview

- [Overview](#overview)
- [Slice](#slice)
- [Syntax](#syntax)
- [1. Basic List Slicing](#1-basic-list-slicing)
  - [Output](#output)
  - [Explanation](#explanation)
- [2. Slice From Beginning](#2-slice-from-beginning)
  - [Output](#output-1)
- [3. Slice Till End](#3-slice-till-end)
  - [Output](#output-2)
- [4. Negative Index Slicing](#4-negative-index-slicing)
  - [Output](#output-3)
- [5. Using Step in List Slicing](#5-using-step-in-list-slicing)
  - [Output](#output-4)
- [6. Reverse a List (Important)](#6-reverse-a-list-important)
  - [Output](#output-5)
- [7. Get Last 3 Elements](#7-get-last-3-elements)
  - [Output](#output-6)
- [8. Get First 3 Elements](#8-get-first-3-elements)
  - [Output](#output-7)
- [9. Copy a List](#9-copy-a-list)
  - [Output](#output-8)
- [10. Replace Elements Using Slicing](#10-replace-elements-using-slicing)
  - [Output](#output-9)

&nbsp;

&nbsp;

&nbsp;

# Slice

List slicing is used to extract a portion of a list.

&nbsp;

&nbsp;

# Syntax

```py
list[start : end : step]
```

&nbsp;

| Parameter | Meaning                   |
| --------- | ------------------------- |
| `start`   | Starting index (included) |
| `end`     | Ending index (excluded)   |
| `step`    | Interval between elements |

&nbsp;

> Slice 1:4 → elements from index 1 to 3

&nbsp;

&nbsp;

# 1. Basic List Slicing

```py
list1 = [1, 2, 3, 4, 5]
print(list1[1 : 4])
```

&nbsp;

## Output

```md
[2, 3, 4]
```

&nbsp;

## Explanation

Index positions:

| Index | Value |
| ----- | ----- |
| 0     | 1     |
| 1     | 2     |
| 2     | 3     |
| 3     | 4     |
| 4     | 5     |

&nbsp;

&nbsp;

# 2. Slice From Beginning

If **start is omitted**, Python starts from index 0.

```py
list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(list1[ : 5])
```

&nbsp;

## Output

```md
[1, 2, 3, 4, 5]
```

&nbsp;

&nbsp;

# 3. Slice Till End

```py
list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(list1[ 6: ])
```

&nbsp;

## Output

```md
[7, 8, 9, 10]
```

&nbsp;

&nbsp;

# 4. Negative Index Slicing

```py
list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(list1[-5 : -2])
```

&nbsp;

## Output

```md
[6, 7, 8, 9]
```

&nbsp;

&nbsp;

# 5. Using Step in List Slicing

```py
list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(list1[ 1: 8 : 2])
```

&nbsp;

## Output

```md
[2, 4, 6, 8]
```

Take every 2nd element

&nbsp;

&nbsp;

# 6. Reverse a List (Important)

```py
list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(list1[ : : -1])
```

&nbsp;

## Output

```md
[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
```

&nbsp;

&nbsp;

# 7. Get Last 3 Elements

```py
list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(list1[ -3: ])
```

&nbsp;

## Output

```md
[8, 9, 10]
```

&nbsp;

&nbsp;

# 8. Get First 3 Elements

```py
list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(list1[ 0 : 3])

# or
print(list1[  : 3])
```

&nbsp;

## Output

```md
[1, 2, 3]
```

&nbsp;

&nbsp;

# 9. Copy a List

```py
list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(list1[ : 5])
```

&nbsp;

## Output

```md
[1, 2, 3, 4, 5]
```

&nbsp;

&nbsp;

# 10. Replace Elements Using Slicing

```py
list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(list1[ : 5])
```

&nbsp;

## Output

```md
[1, 2, 3, 4, 5]
```

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
