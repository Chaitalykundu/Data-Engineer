# Overview

- [Overview](#overview)
- [Definition and Usage](#definition-and-usage)
- [Syntax](#syntax)
- [Parameter Values](#parameter-values)
- [Example](#example)

&nbsp;

&nbsp;

&nbsp;

# Definition and Usage

The `choice()` method returns a randomly selected element from the specified sequence.

The sequence can be a **string**, a **range**, a **list**, a **tuple** or any other kind of sequence.

It returns a random element from a non-empty sequence (like list, tuple, or string).

&nbsp;

&nbsp;

# Syntax

```py
random.choice(sequence)
```

&nbsp;

&nbsp;

# Parameter Values

| Parameter | Description                                              |
| --------- | -------------------------------------------------------- |
| sequence  | Required.                                                |
|           | A sequence like a list, a tuple, a range of numbers etc. |
|           |                                                          |

&nbsp;

&nbsp;

# Example

```python
print(random.choice(['apple', 'banana', 'cherry']))  # list
print(random.choice([0,1,3,4,2]))  # list
print(random.choice((0,1,3,4,2)))  # tuple
print(random.choice("Hello"))  # String
```

&nbsp;

&nbsp;

&nbsp;
