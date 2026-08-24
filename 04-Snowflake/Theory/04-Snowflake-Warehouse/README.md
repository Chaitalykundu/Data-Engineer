# Content

- [Content](#content)
- [Topics](#topics)
- [Recommended learning sequence](#recommended-learning-sequence)
- [Most important interview areas](#most-important-interview-areas)

&nbsp;

&nbsp;

&nbsp;

# Topics

| No. | Topic                          | What you should understand                                                    | Priority        | Status |
| --: | ------------------------------ | ----------------------------------------------------------------------------- | --------------- | ------ |
|   1 | Virtual warehouse fundamentals | What a warehouse is, compute vs storage, supported operations                 | Essential       |
|   2 | Warehouse lifecycle            | Create, use, suspend, resume, resize, alter and drop                          | Essential       | Done   |
|   3 | Warehouse sizes                | X-Small through larger sizes, resource differences and credit consumption     | Essential       |
|   4 | Auto-suspend and auto-resume   | How they work and how to configure them for cost control                      | Essential       |
|   5 | Scaling up                     | Increasing warehouse size to improve complex-query performance                | Essential       |
|   6 | Scaling out                    | Adding clusters to handle concurrent queries                                  | Essential       |
|   7 | Multi-cluster warehouses       | Min/max clusters, maximized mode and auto-scale mode                          | Essential       |
|   8 | Scaling policies               | `STANDARD` vs `ECONOMY`                                                       | Essential       |
|   9 | Workload isolation             | Separate warehouses for ETL, BI, dbt, development and data science            | Essential       |
|  10 | Warehouse caching              | Local data cache, cache reuse and effect of suspension                        | Essential       |
|  11 | Query queuing                  | Why queries queue and how to diagnose concurrency problems                    | Essential       |
|  12 | Cost and credit consumption    | Billing, 60-second minimum, per-second billing and warehouse cost calculation | Essential       |
|  13 | Resource monitors              | Credit quotas, notifications and suspend actions                              | Essential       |
|  14 | Warehouse privileges           | `USAGE`, `OPERATE`, `MODIFY`, `MONITOR` and `OWNERSHIP`                       | Essential       |
|  15 | Monitoring                     | Warehouse load, query history, credit usage and metering history              | Essential       |
|  16 | Performance tuning             | Choosing warehouse size, identifying spilling and reducing queue time         | Essential       |
|  17 | Query Acceleration Service     | Suitable queries, scale factor and additional cost                            | Advanced        |
|  18 | Warehouse types                | Standard, Snowpark-optimized, Gen2 and specialized warehouse options          | Advanced        |
|  19 | Statement parameters           | Query timeouts, queued timeout and concurrency-related settings               | Advanced        |
|  20 | Terraform automation           | Creating and managing warehouses through infrastructure as code               | Relevant to you |

&nbsp;

&nbsp;

# Recommended learning sequence

- Fundamentals and architecture
- Lifecycle SQL commands
- Sizes and billing
- Auto-suspend and auto-resume
- Scale-up and scale-out
- Multi-cluster warehouses
- Caching and query queuing
- Monitoring and performance tuning
- Resource monitors and cost optimization
- RBAC and warehouse privileges
- Advanced warehouse types and automation

&nbsp;

&nbsp;

# Most important interview areas

The most important interview areas are

- scale-up versus scale-out,
- multi-cluster warehouses,
- caching,
- auto-suspend,
- resource monitors,
- query queuing,
- workload isolation and
- credit optimization.
