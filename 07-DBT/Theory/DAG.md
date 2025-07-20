# Overview

- [Overview](#overview)
- [Introduction](#introduction)
- [Why is it called `Directed Acyclic Graph`](#why-is-it-called-directed-acyclic-graph)
- [Example:](#example)
  - [Explanation](#explanation)
- [Why DAG is important in dbt?](#why-dag-is-important-in-dbt)
- [DAG Visual in dbt:](#dag-visual-in-dbt)
- [Analogy:](#analogy)

&nbsp;

&nbsp;

&nbsp;

# Introduction

DAG stands for **Directed Acyclic Graph**.

A DAG shows the order in which your data models (SQL files) will run, based on how they are connected.

&nbsp;

It’s a way to visualize tasks and their dependencies — like a flowchart where the arrows only go forward, never in circles.

&nbsp;

&nbsp;

# Why is it called `Directed Acyclic Graph`

- **Directed**: Arrows show direction (task A runs before task B).
- **Acyclic**: No loops allowed (a task can't depend on itself, even indirectly).
- **Graph**: A set of nodes and edges (models and their links).

&nbsp;

&nbsp;

# Example

Let’s say you have 3 models in dbt:

```text
raw_orders  →  stg_orders  →  final_sales_report
```

&nbsp;

### Explanation

- `stg_orders` depends on `raw_orders`
- `final_sales_report` depends on `stg_orders`

&nbsp;

This is a DAG — dbt will use it to figure out:

- In what order to run your models
- What will be impacted if something changes

&nbsp;

&nbsp;

# Why DAG is important in dbt?

- Helps you understand your data flow
- Makes it easy to debug and optimize
- Enables selective runs like:

  ```bash
  dbt run --select final_sales_report
  ```

&nbsp;

&nbsp;

# DAG Visual in dbt

If you run:

```bash
dbt docs generate
dbt docs serve
```

&nbsp;

You’ll see a DAG graph like this:

```css
[ raw.orders ] → [ stg_orders ] → [ final_sales_report ]
```

Each box is a model. Arrows show the dependencies.

&nbsp;

&nbsp;

# Analogy

Think of baking a cake:

- You need to make the batter (Step 1)
- Then bake it (Step 2)
- Then decorate it (Step 3)

Each step depends on the previous one — that’s a DAG!

&nbsp;

&nbsp;
