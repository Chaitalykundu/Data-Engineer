# Overview

- [Overview](#overview)
- [Seeds Configuration](#seeds-configuration)
  - [Common options](#common-options)
    - [Note](#note)

&nbsp;

&nbsp;

&nbsp;

# Seeds Configuration

Configure seeds in dbt_project.yml (optional)

```yml
seeds:
  my_project: # project name
    +schema: staging # Optional: schema to load the seeds into
    +quote_columns: true # Optional: quote column names (good for case-sensitive warehouses)
    seed_file_name: # seed configuration block
      header: true
      quote_columns: true
    +column_types:
      col_name_1: datatype
      col_name_2: datatype
```

&nbsp;

## Common options

- `header`: Whether the first row contains column names
- `quote_columns`: Force quoting of column names
- `+schema`: Custom schema name for seed tables
- `+column_types`: Force data types for seed columns

&nbsp;

### Note

if `quote_columns: false`, means Columns aren't quoted unnecessarily

&nbsp;

&nbsp;

You can also control things like:

- Schema
- Column quoting
- File encoding

&nbsp;

&nbsp;
