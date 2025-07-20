# Overview

- [Overview](#overview)
- [Adding Tests to a Seed Table (Optional)](#adding-tests-to-a-seed-table-optional)
- [Documenting seed](#documenting-seed)
  - [Run](#run)
- [Cleaning Seeds (if needed)](#cleaning-seeds-if-needed)

&nbsp;

&nbsp;

&nbsp;

# Adding Tests to a Seed Table (Optional)

You can create a `schema.yml` in your seeds folder or models folder:

```yaml
version: 2

models:
  - name: raw_customer
    description: "Raw customer data from seed"
    columns:
      - name: id
        tests:
          - not_null
          - unique
```

&nbsp;

&nbsp;

# Documenting seed

You can also add docs in `schema.yml`:

```yaml
- name: raw_customer
  description: "Raw customer data from seed"
```

&nbsp;

### Run

```bash
dbt docs generate
dbt docs serve
```

&nbsp;

&nbsp;

# Cleaning Seeds (if needed)

To delete the seed tables from your warehouse:

```bash
dbt seed --full-refresh
```
