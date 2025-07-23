# Overview

- [Overview](#overview)
- [Definition and Usage](#definition-and-usage)
  - [Note](#note)
- [Syntax](#syntax)
- [Parameter Values](#parameter-values)
- [Example](#example)

&nbsp;

&nbsp;

&nbsp;

# Definition and Usage

The `randint()` method returns an integer number selected element from the specified range.

&nbsp;

## Note

This method is an alias for `randrange(start, stop+1)`.

&nbsp;

&nbsp;

# Syntax

```py
random.randint(start, stop)
```

&nbsp;

&nbsp;

# Parameter Values

| Parameter | Description                                                 |
| --------- | ----------------------------------------------------------- |
| start     | Required. An integer specifying at which position to start. |
| stop      | Required. An integer specifying at which position to end.   |

&nbsp;

&nbsp;

# Example

```python
import random

print(random.randint(3, 9))
```

&nbsp;

&nbsp;

&nbsp;
