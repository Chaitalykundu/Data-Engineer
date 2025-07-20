# Overview

- [Overview](#overview)
- [Adding Tests to a Model](#adding-tests-to-a-model)
- [Documenting a Model](#documenting-a-model)
  - [Run](#run)

&nbsp;

&nbsp;

&nbsp;

# Adding Tests to a Model

In the same folder (e.g. `models/staging/`), create `schema.yml`:

```yaml
version: 2

models:
  - name: stg_customers
    description: "Staging model for customers"
    columns:
      - name: id
        tests:
          - not_null
          - unique
      - name: email
        tests:
          - not_null
```

&nbsp;

&nbsp;

# Documenting a Model

You can also add docs in `schema.yml`:

```yaml
- name: customer_mart
  description: "Final mart table for customer reporting."
```

&nbsp;

### Run

```bash
dbt docs generate
dbt docs serve
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
