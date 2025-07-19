# dbt Learning Roadmap for Data Engineers

| Stage                                               | Goals                                                               | Topics                                                              | Practice                                                          | Resources |
| --------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ----------------------------------------------------------------- | --------- |
| Stage 1: Foundations (Week 1)                       | Understand what dbt is and where it fits in the data stack.         | What is dbt? (ELT vs ETL, dbt's role)                               | Install dbt-core or dbt Cloud                                     |           |
|                                                     | Set up your first dbt project.                                      | Installation and setup                                              | Connect to your data warehouse                                    |           |
|                                                     |                                                                     | Connecting dbt to a warehouse (Snowflake, BigQuery, Redshift, etc.) | Create a simple transformation model                              |           |
|                                                     |                                                                     | Writing your first model                                            |                                                                   |           |
| Stage 2: Core Concepts (Week 2)                     | Learn dbt's structure and how to build clean modular SQL pipelines. | Models and materializations (view, table, incremental)              | Build staging, intermediate, and final models (stg*, int*, fct\_) |           |
|                                                     |                                                                     | Jinja templating and variables                                      | Use ref() to define dependencies                                  |           |
|                                                     |                                                                     | Macros and custom functions                                         | Use source() to bring in raw data                                 |           |
|                                                     |                                                                     | Ref and Source                                                      | Create incremental models                                         |           |
|                                                     |                                                                     | The DAG (dependency graph)                                          |                                                                   |           |
|                                                     |                                                                     | dbt run, dbt debug, dbt clean                                       |                                                                   |           |
| Stage 3: Testing, Docs, and Best Practices (Week 3) | Build robust, well-documented, and testable pipelines.              | Schema tests (e.g., not_null, unique, relationships)                | Add tests and run `dbt test`                                      |           |
|                                                     |                                                                     | Custom data tests                                                   |                                                                   |           |
|                                                     |                                                                     | Documentation generation and dbt Docs site                          | Generate and serve docs with dbt docs generate && dbt docs serve  |           |
|                                                     |                                                                     | Best practices (naming conventions, folder structure)               | Add model and column descriptions in schema.yml                   |           |
| Stage 4: Advanced Features (Week 4)                 | Automate and productionize dbt pipelines.                           | Snapshots (for slowly changing dimensions)                          | Add a snapshot for a changing dimension table                     |           |
|                                                     |                                                                     | Hooks and operations                                                | Configure production and dev environments                         |           |
|                                                     |                                                                     | Exposures and metrics (if using dbt Cloud or dbt Semantic Layer)    | Set up a CI/CD workflow with GitHub Actions or GitLab             |           |
|                                                     |                                                                     | Environment and deployment (Dev/Prod)                               |                                                                   |           |
|                                                     |                                                                     | Git + dbt for version control                                       |                                                                   |           |
| Stage 5: Project Work & Real-World Integration      | Build a real, end-to-end dbt project.                               | dbt with orchestration tools (Airflow, Prefect, Dagster)            | Clean a real-world dataset (e.g., NYC taxi data) using dbt        |           |
|                                                     |                                                                     | dbt + data observability (Monte Carlo, Elementary)                  | Set up a mini data warehouse project (EL + dbt)                   |           |
|                                                     |                                                                     | dbt with Python models (dbt-core >= 1.3)                            | Create a personal analytics dashboard fed by dbt models           |           |

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

# Phase 1: Beginner – Understand the Fundamentals (Week 1)

## 🎯 Learning Objectives:

- What is dbt? Why use it?
- dbt core vs dbt cloud
- Basic architecture: Models, Sources, Seeds, Snapshots, Tests
- Jinja templating

&nbsp;

## 📚 Free Resources:

- dbt Learn - Getting Started
- dbt Cloud Free Tier — start with the free version
- YouTube: dbt for Beginners – Coalesce Talk

&nbsp;

## 🛠️ Practice Tasks:

- Set up a free dbt Cloud account
- Connect to a sample warehouse (like Snowflake or BigQuery)
- Create your first dbt project
- Build a simple model using select \* from my_table

&nbsp;

## ✅ Milestone Checkpoint:

- ✅ You can explain what dbt is, when to use it, and how to create a model.
- ✅ You have a running dbt project with at least one model and a source.

&nbsp;

&nbsp;

# 🟡 Phase 2: Intermediate – Templating, Testing, and Documentation (Week 2-3)

## 🎯 Learning Objectives:

- Modular SQL with Jinja macros
- Sources, Seeds, Snapshots, and Ref
- Data Testing (Unique, Not Null, Relationships)
- Auto-Documentation & dbt docs
- Use of dbt run, dbt test, dbt build, dbt compile

&nbsp;

## 📚 Free Resources:

- dbt Docs: Jinja & Macros
- dbt Learn Intermediate
- GitHub: dbt sample project — jaffle_shop

&nbsp;

## 🛠️ Practice Tasks:

- Add 2–3 sources with freshness checks
- Create models using ref() and macros
- Write at least 5 tests on your models
- Generate and serve dbt docs

&nbsp;

## ✅ Milestone Checkpoint:

- ✅ You’ve built a full pipeline with source → model → test → doc.
- ✅ You’re using Jinja to make your SQL modular and DRY.

&nbsp;

&nbsp;

# 🟠 Phase 3: Advanced – Materializations, CI/CD, and Version Control (Week 4-5)

## 🎯 Learning Objectives:

- Materializations: ephemeral, table, incremental
- Advanced testing (schema + data)
- Version control and dbt with GitHub/GitLab
- dbt run-operation & macros
- dbt Packages (like dbt-utils)
- Deployment via dbt Cloud or CLI + CI

&nbsp;

## 📚 Free Resources:

- dbt Materializations
- Git + dbt Guide
- dbt-utils package
- YouTube: CI/CD with dbt + GitHub Actions

&nbsp;

## 🛠️ Practice Tasks:

- Use incremental materialization for large data loads
- Integrate GitHub repo for your dbt project
- Use dbt run-operation to call a macro
- Add dbt_utils package and use group_by macro

&nbsp;

## ✅ Milestone Checkpoint:

- ✅ Your project uses version control and incremental builds.
- ✅ You have implemented a simple CI/CD pipeline.

&nbsp;

&nbsp;

# 🔴 Phase 4: Expert – Advanced Architectures, dbt in Production (Week 6+)

## 🎯 Learning Objectives:

- Advanced macros & hooks
- dbt + Airflow, dbt + Prefect orchestration
- dbt with modern data stack (Snowflake, Fivetran, Looker)
- Metadata management & Observability (dbt + Monte Carlo/Datafold)
- Building reusable dbt packages
- Role-based access control in dbt Cloud

&nbsp;

## 📚 Free Resources:

- Advanced dbt with Airflow
- dbt Discourse – Advanced Topics
- dbt Best Practices
- Analytics Engineering Guide by dbt Labs

&nbsp;

## 🛠️ Practice Tasks:

- Orchestrate dbt with Apache Airflow or Prefect
- Create macros to dynamically generate SQL based on metadata
- Build a custom dbt package
- Implement SLAs and error notifications

&nbsp;

## ✅ Milestone Checkpoint:

- ✅ You’ve built and deployed a production-grade dbt project with orchestration.
- ✅ You understand dbt’s role in modern data platform architecture.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
