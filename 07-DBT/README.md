# dbt Learning Roadmap for Data Engineers

| Stage                                               | Goals                                                               | Topics                                                              | Practice                                                          | Theory Status | Practice Status |
| --------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ----------------------------------------------------------------- | ------------- | --------------- |
| Stage 1: Foundations (Week 1)                       | Understand what dbt is and where it fits in the data stack.         | What is dbt? (ELT vs ETL, dbt's role)                               | Install dbt-core or dbt Cloud                                     |               | Done            |
|                                                     | Set up your first dbt project.                                      | Installation and setup                                              | Connect to your data warehouse                                    | Done          | Done            |
|                                                     |                                                                     | Connecting dbt to a warehouse (Snowflake, BigQuery, Redshift, etc.) | Create a simple transformation model                              | Done          |
|                                                     |                                                                     | Writing your first model                                            |                                                                   |               |
| Stage 2: Core Concepts (Week 2)                     | Learn dbt's structure and how to build clean modular SQL pipelines. | Models and materializations (view, table, incremental)              | Build staging, intermediate, and final models (stg*, int*, fct\_) |               |
|                                                     |                                                                     | Jinja templating and variables                                      | Use ref() to define dependencies                                  |               |
|                                                     |                                                                     | Macros and custom functions                                         | Use source() to bring in raw data                                 |               |
|                                                     |                                                                     | Ref and Source                                                      | Create incremental models                                         |               |
|                                                     |                                                                     | The DAG (dependency graph)                                          |                                                                   |               |
|                                                     |                                                                     | dbt run, dbt debug, dbt clean                                       |                                                                   |               |
| Stage 3: Testing, Docs, and Best Practices (Week 3) | Build robust, well-documented, and testable pipelines.              | Schema tests (e.g., not_null, unique, relationships)                | Add tests and run `dbt test`                                      |               |
|                                                     |                                                                     | Custom data tests                                                   |                                                                   |               |
|                                                     |                                                                     | Documentation generation and dbt Docs site                          | Generate and serve docs with dbt docs generate && dbt docs serve  |               |
|                                                     |                                                                     | Best practices (naming conventions, folder structure)               | Add model and column descriptions in schema.yml                   |               |
| Stage 4: Advanced Features (Week 4)                 | Automate and productionize dbt pipelines.                           | Snapshots (for slowly changing dimensions)                          | Add a snapshot for a changing dimension table                     |               |
|                                                     |                                                                     | Hooks and operations                                                | Configure production and dev environments                         |               |
|                                                     |                                                                     | Exposures and metrics (if using dbt Cloud or dbt Semantic Layer)    | Set up a CI/CD workflow with GitHub Actions or GitLab             |               |
|                                                     |                                                                     | Environment and deployment (Dev/Prod)                               |                                                                   |               |
|                                                     |                                                                     | Git + dbt for version control                                       |                                                                   |               |
| Stage 5: Project Work & Real-World Integration      | Build a real, end-to-end dbt project.                               | dbt with orchestration tools (Airflow, Prefect, Dagster)            | Clean a real-world dataset (e.g., NYC taxi data) using dbt        |               |
|                                                     |                                                                     | dbt + data observability (Monte Carlo, Elementary)                  | Set up a mini data warehouse project (EL + dbt)                   |               |
|                                                     |                                                                     | dbt with Python models (dbt-core >= 1.3)                            | Create a personal analytics dashboard fed by dbt models           |               |

&nbsp;

&nbsp;

&nbsp;

# DBT Roadmap — Beginner → Advanced

## LEVEL 1 — dbt Fundamentals
### 1. What is dbt?

Understand:

- What dbt does
- What dbt does not do
- Why dbt is used in ELT
- dbt vs ETL
- dbt vs SQL scripts
- dbt vs Airflow
- dbt vs Spark
- dbt Core vs dbt platform concepts

&nbsp;

&nbsp;

### 2. dbt architecture

Understand

```
Source Systems
      ↓
Ingestion
      ↓
Snowflake RAW
      ↓
      dbt
      ↓
STAGING
      ↓
INTERMEDIATE
      ↓
MART
      ↓
BI / Analytics
```

The critical concept:

> dbt is primarily the transformation layer, not the ingestion layer.

For your Snowflake stack, this distinction is important.

&nbsp;

&nbsp;

## LEVEL 2 — dbt Project Structure

Learn the standard project structure.

```
my_dbt_project/
│
├── models/
│   ├── staging/
│   ├── intermediate/
│   └── marts/
│
├── tests/
├── macros/
├── snapshots/
├── seeds/
├── analyses/
│
├── dbt_project.yml
├── packages.yml
└── README.md
````

&nbsp;

&nbsp;

Understand the purpose of every directory.

Must know
- dbt_project.yml
- profiles.yml
- models
- seeds
- snapshots
- tests
- macros
- analyses
- packages


&nbsp;

&nbsp;

## LEVEL 3 — Models

This is the core of dbt.

Understand:

A dbt model is generally a SQL SELECT statement that dbt turns into a database object.

Example:

```sql
SELECT
    customer_id,
    customer_name,
    email,
    created_at
FROM {{ source('crm', 'customers') }}
```

Learn:

- Model creation
- Model naming
- Model dependencies
- `ref()`
- `source()`

Critical concept: `ref()`

```sql
SELECT *
FROM {{ ref('stg_customers') }}
```

Understand why this is better than:

```sql
SELECT *
FROM analytics.stg_customers
```

Because `ref()` gives dbt:

- Dependency management
- DAG generation
- Environment-aware references
- Lineage
- Correct execution order


&nbsp;

&nbsp;

## LEVEL 4 — Sources

Learn:

```
sources:
  - name: crm
    database: RAW
    schema: CRM
    tables:
      - name: customers
      - name: orders
```


Then:

```
SELECT *
FROM {{ source('crm', 'customers') }}
```

Understand:

- Source declaration
- Source freshness
- Source tests
- Source documentation
- Source lineage
- Interview question

Why shouldn't you directly reference raw tables inside dbt models?

You should be able to explain the architectural reasoning, not just say "because dbt recommends sources."

&nbsp;

&nbsp;

## LEVEL 5 — Materializations

This is very important for interviews.

Learn deeply:

- view
- table
- incremental
- ephemeral

### View

```
dbt
 ↓
SQL
 ↓
Database View
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


# Tools You’ll Use Along side dbt

| Tool                        | Purpose                              |
| --------------------------- | ------------------------------------ |
| Snowflake/BigQuery/Redshift | Data warehouse                       |
| Git/GitHub                  | Version control                      |
| Airflow/Prefect             | Orchestration & scheduling           |
| Looker/Metabase             | BI dashboard for visualization       |
| dbt Cloud                   | Cloud-native dbt + scheduling + docs |
|                             |                                      |

&nbsp;

&nbsp;

# Certificate

- [dbt Fundamentals](https://learn.getdbt.com/courses/dbt-fundamentals?utm_source=chatgpt.com)
- [dbt Analytics Engineering Certification Exam](https://www.getdbt.com/certifications/analytics-engineer-certification-exam?utm_source=chatgpt.com)

&nbsp;

&nbsp;

&nbsp;

&nbsp;

🚦 Phase 1: Beginner – Get Comfortable with the Basics

| Step | Topic                  | Concepts/Commands                         | Goal                                           |
| ---- | ---------------------- | ----------------------------------------- | ---------------------------------------------- |
| 1    | What is dbt?           | dbt CLI vs Cloud, dbt workflow, ELT, DAGs | Understand where dbt fits in modern data stack |
| 2    | Install dbt            | `pip install dbt-core` or `dbt init`      | Setup a local environment                      |
| 3    | Initialize project     | `dbt init my_project`                     | Create first dbt project                       |
| 4    | dbt Project Structure  | `models/`, `dbt_project.yml`, `target/`   | Know what each folder/file does                |
| 5    | Connect to a Warehouse | Profiles.yml setup                        | Connect dbt to Snowflake/BigQuery/Postgres     |
| 6    | Create First Model     | `.sql` file inside `models/`, `ref()`     | Build your first SQL model                     |
| 7    | Run and Compile        | `dbt run`, `dbt compile`, `dbt debug`     | Run models and inspect compiled SQL            |
| 8    | Model Configs          | `materialized: view/table/incremental`    | Learn how to control table behavior            |
| 9    | Sources                | `source()`                                | Connect models to raw data                     |
| 10   | Jinja & Macros         | `{{ }}` syntax                            | Add logic inside SQL using Jinja2              |

🎯 Milestone 1: Build a simple DAG with 2–3 models based on raw tables.

🚧 Phase 2: Intermediate – Add Robustness

| Step | Topic              | Commands/Concepts                              | Goal                                  |
| ---- | ------------------ | ---------------------------------------------- | ------------------------------------- |
| 1    | Documentation      | `dbt docs generate`, `dbt docs serve`          | Auto-generate lineage and model docs  |
| 2    | Testing            | `dbt test`, `unique`, `not_null`, custom tests | Validate data quality                 |
| 3    | Seeds              | `seeds/`, `dbt seed`                           | Use static data like CSVs             |
| 4    | Snapshots          | `snapshots/`, `dbt snapshot`                   | Track changes over time (SCD Type 2)  |
| 5    | Incremental Models | `is_incremental()` logic                       | Improve performance on large datasets |
| 6    | Model Performance  | Partitioning, clustering, `limit`, caching     | Optimize dbt models                   |
| 7    | Packages           | `dbt_utils`, `dbt_expectations`                | Reuse community features              |

🎯 Milestone 2: Build a production-ready model with documentation, tests, and performance optimization.

🚀 Phase 3: Advanced – Go Pro

| Step | Topic                    | Commands/Concepts               | Goal                               |
| ---- | ------------------------ | ------------------------------- | ---------------------------------- |
| 1    | Custom Macros            | `macros/`, `{{ macro_name() }}` | Automate repetitive logic          |
| 2    | Custom Materializations  | `materializations/`             | Define how models are created      |
| 3    | dbt Cloud Features       | Scheduler, Logging, Alerts      | Leverage dbt Cloud for deployments |
| 4    | CI/CD & Git              | GitHub/GitLab pipelines         | Version control and deployment     |
| 5    | dbt with Airflow/Dagster | Orchestration integration       | Automate workflows end-to-end      |
| 6    | dbt + dbt Semantic Layer | Metrics, exposure               | Use dbt for BI and governance      |

🎯 Milestone 3: Create a modular, scalable dbt repo with CI/CD and orchestration.

📚 Free Resources
Official

- 📘 [dbt Learn (Official)](https://docs.getdbt.com/learn)

- [💻 dbt Core GitHub](https://github.com/dbt-labs/dbt-core)

Community & Blogs

- [dbt Slack Community](https://community.getdbt.com/)
- [GitHub projects](https://github.com/dbt-labs/)
- [dbt Discourse](https://discourse.getdbt.com/)

YouTube Playlists

- [Official dbt YouTube](https://www.youtube.com/c/dbtlabs)

- [Coalesce Conference talks](https://www.getdbt.com/coalesce/)

🛠 Real-World Project Ideas

| Project               | Description                                              |
| --------------------- | -------------------------------------------------------- |
| Retail Sales Analysis | Transform raw CSV into clean product/sales/daily reports |
| HR Analytics          | Build SCD snapshots for employee status history          |
| Finance Pipeline      | Validate transactional integrity with tests              |
| Marketing Funnel      | Use sources + dbt_utils to track lead funnel stages      |
