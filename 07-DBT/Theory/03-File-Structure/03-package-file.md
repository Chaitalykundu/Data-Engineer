# Overview

- [Overview](#overview)
- [package.yml file](#packageyml-file)
- [Why do we need packages.yml](#why-do-we-need-packagesyml)
- [Example](#example)
- [What happens when you run dbt deps?](#what-happens-when-you-run-dbt-deps)
- [What is dbt_utils](#what-is-dbt_utils)
  - [example](#example-1)

&nbsp;

&nbsp;

&nbsp;

# package.yml file

package.yml file is used to define external dbt packages that your project depends on.

When we run `dbt deps`, the `package.yml` file gets generated

&nbsp;

&nbsp;

# Why do we need packages.yml

Suppose you need some functionality that you don't want to write yourself.

Instead of creating everything from scratch, you can install an existing dbt package.

&nbsp;

&nbsp;

# Example

```
packages:
  - package: dbt-labs/dbt_utils
    version: 1.3.0
```

This tells dbt: **"My project depends on the dbt_utils package from dbt Labs, version 1.3.0."**

&nbsp;

Then run:

```
dbt deps
```

dbt downloads the package.

&nbsp;

&nbsp;

# What happens when you run dbt deps?

```
packages.yml
      ↓
   dbt deps
      ↓
Download packages
      ↓
dbt_packages/
      ↓
Your project can use their macros/models
```

&nbsp;

&nbsp;

# What is dbt_utils

dbt_utils provides reusable macros and utilities so you don't have to write common SQL/Jinja logic yourself.

For example, it provides macros for things such as:

- generating surrogate keys
- generating date sequences
- unions
- pivoting
- grouping columns
- data validation utilities

&nbsp;

&nbsp;

## example

```
{{ dbt_utils.generate_surrogate_key(['customer_id', 'order_id']) }}
```

Instead of manually creating your own hashing logic.
&nbsp;
