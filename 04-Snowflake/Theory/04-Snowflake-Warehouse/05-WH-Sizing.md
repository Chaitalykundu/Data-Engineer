# Content

- [Content](#content)
- [Warehouse Sizing](#warehouse-sizing)
- [Warehouse Sizes](#warehouse-sizes)
- [Scaling pattern](#scaling-pattern)
  - [Example](#example)
- [Credit-Consumption Example](#credit-consumption-example)

&nbsp;

&nbsp;

&nbsp;

# Warehouse Sizing

In Snowflake, Warehouse Size determines how much compute power (CPU, memory, parallel processing) is allocated to execute workloads.

Increasing warehouse size improves performance but also increases credit consumption.

&nbsp;

&nbsp;

# Warehouse Sizes

| **Warehouse Size** | **Credits per full hour / vCPUs (approx)** | **Use Case**                           | **Scaling Factor** |
| ------------------ | ------------------------------------------ | -------------------------------------- | ------------------ |
| `X-Small (XS)`     | \~1 vCPU                                   | Dev, testing, small datasets           | 1×                 |
| `Small (S)`        | \~2 vCPUs                                  | Light queries, dashboards              | 2×                 |
| `Medium (M)`       | \~4 vCPUs                                  | Mid-size transforms, joins             | 4×                 |
| `Large (L)`        | \~8 vCPUs                                  | Data loads, multi-joins, large queries | 8×                 |
| `X-Large (XL)`     | \~16 vCPUs                                 | Complex analytics, ELT                 | 16×                |
| `2X-Large (2XL)`   | \~32 vCPUs                                 | Heavy jobs, multi-user queries         | 32×                |
| `3X-Large (3XL)`   | \~64 vCPUs                                 | Parallel workloads                     | 64×                |
| `4X-Large (4XL)`   | \~128 vCPUs                                | Enterprise-grade concurrent workloads  | 128×               |
| `5X-Large`         | \~256 vCPUs                                |                                        | 256×               |
| `6X-Large`         | \~512 vCPUs                                |                                        | 512×               |

&nbsp;

&nbsp;

# Scaling pattern

Every size approximately doubles compute resources.

```
X-Small
   ↓ ×2
Small
   ↓ ×2
Medium
   ↓ ×2
Large
   ↓ ×2
X-Large
   ↓ ×2
2X-Large
   ↓ ×2
3X-Large
   ↓ ×2
4X-Large
```

&nbsp;

## Example

Suppose a query takes:

```
X-Small → 20 min
Small   → 10 min
Medium  → 5 min
```

Execution may become faster because more compute resources are available.

But cost also increases.

&nbsp;

&nbsp;

# Credit-Consumption Example

Suppose a warehouse runs continuously for two hours:

| Warehouse | Calculation | Credits consumed |
| --------- | ----------: | ---------------: |
| X-Small   | 1 × 2 hours |                2 |
| Small     | 2 × 2 hours |                4 |
| Medium    | 4 × 2 hours |                8 |
| Large     | 8 × 2 hours |               16 |

&nbsp;

The monetary cost is:

```md
Credits consumed × price per credit
```

The price per credit depends on the Snowflake edition, cloud region and contract.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
