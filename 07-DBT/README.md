# dbt Learning Roadmap for Data Engineers

| Stage                                               | Goals                                                               | Topics                                                              | Practice                                                          | Theory Status | Practice Status |
| --------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ----------------------------------------------------------------- | ------------- | --------------- |
| Stage 1: Foundations (Week 1)                       | Understand what dbt is and where it fits in the data stack.         | What is dbt? (ELT vs ETL, dbt's role)                               | Install dbt-core or dbt Cloud                                     |               |
|                                                     | Set up your first dbt project.                                      | Installation and setup                                              | Connect to your data warehouse                                    |               |
|                                                     |                                                                     | Connecting dbt to a warehouse (Snowflake, BigQuery, Redshift, etc.) | Create a simple transformation model                              |               |
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
