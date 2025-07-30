# Virtual Warehouse (VWH) Sizing

| **Warehouse Size** | **vCPUs (approx)** | **Use Case**                           | **Scaling Factor** |
| ------------------ | ------------------ | -------------------------------------- | ------------------ |
| `X-Small (XS)`     | \~1 vCPU           | Dev, testing, small datasets           | 1×                 |
| `Small (S)`        | \~2 vCPUs          | Light queries, dashboards              | 2×                 |
| `Medium (M)`       | \~4 vCPUs          | Mid-size transforms, joins             | 4×                 |
| `Large (L)`        | \~8 vCPUs          | Data loads, multi-joins, large queries | 8×                 |
| `X-Large (XL)`     | \~16 vCPUs         | Complex analytics, ELT                 | 16×                |
| `2X-Large (2XL)`   | \~32 vCPUs         | Heavy jobs, multi-user queries         | 32×                |
| `3X-Large (3XL)`   | \~64 vCPUs         | Parallel workloads                     | 64×                |
| `4X-Large (4XL)`   | \~128 vCPUs        | Enterprise-grade concurrent workloads  | 128×               |
