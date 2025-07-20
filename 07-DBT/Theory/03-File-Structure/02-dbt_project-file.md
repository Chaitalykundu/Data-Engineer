# Overview

- [Overview](#overview)
- [Sample dbt_project.yml File](#sample-dbt_projectyml-file)
- [Key Fields Explained](#key-fields-explained)
- [Enable quoting of schema/table names:](#enable-quoting-of-schematable-names)

&nbsp;

&nbsp;

&nbsp;

# Sample dbt_project.yml File

```yml
name: my_dbt_project # 👈 Name of your dbt project
version: "1.0" # 🔖 Optional: version of your project

profile: my_dbt_profile # 🔐 Refers to a profile in ~/.dbt/profiles.yml

# 🗂️ Where to find your models and other objects
model-paths: ["models"]
analysis-paths: ["analyses"]
test-paths: ["tests"]
seed-paths: ["seeds"]
macro-paths: ["macros"]
snapshot-paths: ["snapshots"]

# 📁 Where dbt will store compiled SQL and run artifacts
target-path: "target"
clean-targets: ["target", "dbt_packages"]

# 📦 If using packages (optional)
packages-install-path: "dbt_packages"

# 🏗️ How models behave (materializations, tags, etc.)
models:
  my_dbt_project: # 👈 Match the `name` above
    staging:
      materialized: view # All models in models/staging/ are views
    marts:
      materialized: table # All models in models/marts/ are tables

# 🌱 How seeds behave
seeds:
  my_dbt_project: # 👈 Must match the `name:` at the top
    +schema: staging # Optional: schema to load the seeds into
    +quote_columns: true # Optional: quote column names (good for case-sensitive warehouses)
    seed_file_name:
      +column_types:
        col_name_1: datatype
        col_name_2: datatype
```

&nbsp;

&nbsp;

&nbsp;

# Key Fields Explained

| Field         | Description                                                                                                 |
| ------------- | ----------------------------------------------------------------------------------------------------------- |
| name          | Name of your project. Should match the folder and be unique if you use dbt packages.                        |
| version       | Version of your project (optional, useful in packages).                                                     |
| profile       | Name of the profile in ~/.dbt/profiles.yml that contains your warehouse connection.                         |
| model-paths   | Folder(s) where dbt will look for your models (\*.sql).                                                     |
| target-path   | Where compiled SQL files and results will be saved (default is target/).                                    |
| clean-targets | Paths that are cleaned when you run dbt clean.                                                              |
| models        | The most important section! Controls how your models are built (materialization type, configs, tags, etc.). |
|               |                                                                                                             |

&nbsp;

&nbsp;

&nbsp;

# Enable quoting of schema/table names

```yaml
quoting:
  database: false
  schema: false
  identifier: true
```

&nbsp;

&nbsp;

&nbsp;
