# Content

- [Content](#content)
- [Scaling](#scaling)
- [Vertical Scaling (Scale Up)](#vertical-scaling-scale-up)
  - [What increases?](#what-increases)
  - [Best for:](#best-for)
  - [Example:](#example)

&nbsp;

&nbsp;

&nbsp;

# Scaling

In Snowflake, scaling means increasing compute capacity to improve performance.

There are two approaches:

1. Vertical Scaling (Scale Up)
2. Horizontal Scaling (Scale Out)

&nbsp;

&nbsp;

# Vertical Scaling (Scale Up)

Increase the size of one warehouse.

Example:

```
X-Small → Small → Medium → Large
```

You make one warehouse more powerful.

&nbsp;

&nbsp;

## What increases?

- CPU
- Memory
- Compute resources

&nbsp;

&nbsp;

## Best for:

- Slow-running queries
- Large joins
- Heavy aggregations
- Complex transformations
- Large dbt model execution

&nbsp;

&nbsp;

## Example:

Before:

- Warehouse: Small
- Query Time: 15 min

&nbsp;

After scaling up:

- Warehouse: Large
- Query Time: 4 min


&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
