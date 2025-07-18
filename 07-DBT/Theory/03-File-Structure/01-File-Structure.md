# Overview

- [Overview](#overview)
- [dbt Project File Structure (Typical Layout)](#dbt-project-file-structure-typical-layout)
- [Key Files Explained:](#key-files-explained)
- [🧠 Bonus: Model Organization Strategy](#-bonus-model-organization-strategy)

&nbsp;

&nbsp;

&nbsp;

# dbt Project File Structure (Typical Layout)

```text
my_dbt_project/
│
├── dbt_project.yml         👈 Project settings (name, paths, configs)
├── packages.yml            📦 For installing dbt packages (optional)
├── profiles.yml            🔐 (Not here by default — lives in ~/.dbt/)
│
├── models/                 🏗️ Main folder for your SQL models
│   ├── staging/            🔹 Staging models (raw → clean)
│   ├── marts/              🔸 Business logic (clean → final reports)
│   ├── intermediate/       🔸 Optional: reusable logic between stage & mart
│   └── my_model.sql        🧪 A simple SQL model
│
├── seeds/                  🌱 CSV files that can be loaded as tables
│   └── sample_data.csv
│
├── snapshots/              📸 For slowly changing dimension (SCD) tracking
│   └── customers_snapshot.sql
│
├── macros/                 🧠 Reusable SQL functions and logic
│   └── custom_macros.sql
│
├── tests/                  ✅ Custom data tests (optional, can be inline too)
│   └── assert_high_value_orders.sql
│
└── analyses/               📊 Ad hoc queries for analysis (not models)
    └── churn_exploration.sql
```

&nbsp;

&nbsp;

&nbsp;

# Key Files Explained:

| File/Folder     | Purpose                                                  |
| --------------- | -------------------------------------------------------- |
| dbt_project.yml | Configures your dbt project (models path, version, etc.) |
| profiles.yml    | Stores your database connection (located in ~/.dbt/)     |
| models/         | Your actual data transformations written in SQL          |
| seeds/          | Upload CSV files as tables to your warehouse             |
| snapshots/      | Track historical changes in your data                    |
| macros/         | Define reusable logic, like functions                    |
| tests/          | Write your own custom tests                              |
| analyses/       | Store exploratory or one-off queries                     |
|                 |                                                          |

&nbsp;

&nbsp;

&nbsp;

# 🧠 Bonus: Model Organization Strategy

Many teams organize models/ like this:

```text
models/
├── staging/
│   └── stg_orders.sql
├── intermediate/
│   └── int_order_metrics.sql
└── marts/
    └── sales/
        └── fct_daily_sales.sql
```

&nbsp;

This structure reflects the data pipeline:

```nginx
raw → staging → intermediate → marts → dashboards
```
