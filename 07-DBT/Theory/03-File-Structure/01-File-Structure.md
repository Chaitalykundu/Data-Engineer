# Overview

- [Overview](#overview)
- [dbt Project File Structure (Typical Layout)](#dbt-project-file-structure-typical-layout)
- [Key Files Explained](#key-files-explained)
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
├── README.md
│
├── models/                 🏗️ Main folder for your SQL models
│   ├── staging/            🔹 Staging models (raw → clean)
│   │   ├── source.yml
│   │   ├── stg_customers.sql
│   │   ├── stg_orders.sql
│   │   └── staging.yml
│   │
│   ├── intermediate/       🔸 Optional: reusable logic between stage & mart
│   └── marts/              🔸 Business logic (clean → final reports)
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
│   └── custom_test.sql
│
├── analyses/               📊 Ad hoc queries for analysis (not models)
│   └── customer_analysis.sql
└── target/
    ├── compiled/
    ├── run/
    └── manifest.json
```

&nbsp;

&nbsp;

&nbsp;

# Key Files Explained

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
