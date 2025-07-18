# Overview

- [Overview](#overview)
- [Summary](#summary)
- [Jinja](#jinja)
- [Basic Syntax](#basic-syntax)
- [Real dbt Examples](#real-dbt-examples)
  - [`ref()` — Most Common Jinja Function](#ref--most-common-jinja-function)
  - [Config Block](#config-block)

&nbsp;

&nbsp;

&nbsp;

# Summary

&nbsp;

&nbsp;

&nbsp;

# Jinja

Jinja is a **Python-based templating language** that lets you inject logic into SQL files — think:

- Variables
- Conditions
- Loops
- Filters
- Macros (reusable code blocks)

&nbsp;

In dbt, your `.sql` files aren’t just plain SQL — they’re `Jinja + SQL`.

&nbsp;

&nbsp;

# Basic Syntax

Jinja syntax looks like this:

| Use Case       | Syntax                                  |
| -------------- | --------------------------------------- |
| Variable       | {{ variable_name }}                     |
| Logic/ Control | {% if condition %} ... {% endif %}      |
| Loops          | {% for item in list %} ... {% endfor %} |
| Comments       | {# This is a Jinja comment #}           |
|                |                                         |

&nbsp;

&nbsp;

# Real dbt Examples

## `ref()` — Most Common Jinja Function

```sql
SELECT * FROM {{ ref('stg_customers') }}
```

`ref()` tells dbt: "Track this dependency and point to the actual table name in the warehouse."

&nbsp;

&nbsp;

## Config Block

Used to set materializations, tags, etc.

```sql
{{ config(
    materialized = 'view',
    tags = ['staging']
) }}
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
