# Overview

- [Overview](#overview)
- [Definition and Usage](#definition-and-usage)
- [Syntax](#syntax)
- [Parameter Values](#parameter-values)
- [Example](#example)
  - [Example 1](#example-1)
  - [Example 2](#example-2)
- [Use Cases](#use-cases)

&nbsp;

&nbsp;

&nbsp;

# Definition and Usage

The `random()` method returns a random floating number between 0 and 1.

&nbsp;

# Syntax

```py
random.random()
```

&nbsp;

&nbsp;

# Parameter Values

No parameters

&nbsp;

&nbsp;

# Example

## Example 1

It generates a random float between 0.0 and 1.0

```py
print(random.random())
```

&nbsp;

## Example 2

It generates a random float between 0.0 and 10.0

```py
import random
print(random.random() * 10)
```

&nbsp;

&nbsp;

# Use Cases

You can use this to:

- Simulate dice rolls with decimals
- Generate scaled float values
- Pick random time delays, scores, or prices
