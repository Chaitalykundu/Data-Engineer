| **Topic**                                                     | **Status** |
| ------------------------------------------------------------- | ---------- |
| What is dbt? Why use it?                                      | Done       |
| dbt Core vs dbt Cloud                                         | Done       |
| Basic architecture : Models, Sources, Seeds, Snapshots, Tests |            |
| Jinja templating                                              |            |

&nbsp;

&nbsp;

# Phase 1: Beginner – Understand the Fundamentals (Week 1)

## 🎯 Learning Objectives

- What is dbt? Why use it?
- dbt core vs dbt cloud
- Basic architecture: Models, Sources, Seeds, Snapshots, Tests
- Jinja templating

&nbsp;

## 📚 Free Resources

- dbt Learn - Getting Started
- dbt Cloud Free Tier — start with the free version
- YouTube: dbt for Beginners – Coalesce Talk

&nbsp;

## 🛠️ Practice Tasks

- Set up a free dbt Cloud account
- Connect to a sample warehouse (like Snowflake or BigQuery)
- Create your first dbt project
- Build a simple model using select \* from my_table

&nbsp;

## ✅ Milestone Checkpoint

- You can explain what dbt is, when to use it, and how to create a model.
- You have a running dbt project with at least one model and a source.

&nbsp;

&nbsp;

# 🟡 Phase 2: Intermediate – Templating, Testing, and Documentation (Week 2-3)

## 🎯 Learning Objectives

- Modular SQL with Jinja macros
- Sources, Seeds, Snapshots, and Ref
- Data Testing (Unique, Not Null, Relationships)
- Auto-Documentation & dbt docs
- Use of dbt run, dbt test, dbt build, dbt compile

&nbsp;

## 📚 Free Resources

- dbt Docs: Jinja & Macros
- dbt Learn Intermediate
- GitHub: dbt sample project — jaffle_shop

&nbsp;

## 🛠️ Practice Tasks

- Add 2–3 sources with freshness checks
- Create models using ref() and macros
- Write at least 5 tests on your models
- Generate and serve dbt docs

&nbsp;

## ✅ Milestone Checkpoint

- ✅ You’ve built a full pipeline with source → model → test → doc.
- ✅ You’re using Jinja to make your SQL modular and DRY.

&nbsp;

&nbsp;

# 🟠 Phase 3: Advanced – Materializations, CI/CD, and Version Control (Week 4-5)

## 🎯 Learning Objectives

- Materializations: ephemeral, table, incremental
- Advanced testing (schema + data)
- Version control and dbt with GitHub/GitLab
- dbt run-operation & macros
- dbt Packages (like dbt-utils)
- Deployment via dbt Cloud or CLI + CI

&nbsp;

## 📚 Free Resources

- dbt Materializations
- Git + dbt Guide
- dbt-utils package
- YouTube: CI/CD with dbt + GitHub Actions

&nbsp;

## 🛠️ Practice Tasks

- Use incremental materialization for large data loads
- Integrate GitHub repo for your dbt project
- Use dbt run-operation to call a macro
- Add dbt_utils package and use group_by macro

&nbsp;

## ✅ Milestone Checkpoint

- ✅ Your project uses version control and incremental builds.
- ✅ You have implemented a simple CI/CD pipeline.

&nbsp;

&nbsp;

# 🔴 Phase 4: Expert – Advanced Architectures, dbt in Production (Week 6+)

## 🎯 Learning Objectives

- Advanced macros & hooks
- dbt + Airflow, dbt + Prefect orchestration
- dbt with modern data stack (Snowflake, Fivetran, Looker)
- Metadata management & Observability (dbt + Monte Carlo/Datafold)
- Building reusable dbt packages
- Role-based access control in dbt Cloud

&nbsp;

## 📚 Free Resources

- Advanced dbt with Airflow
- dbt Discourse – Advanced Topics
- dbt Best Practices
- Analytics Engineering Guide by dbt Labs

&nbsp;

## 🛠️ Practice Tasks

- Orchestrate dbt with Apache Airflow or Prefect
- Create macros to dynamically generate SQL based on metadata
- Build a custom dbt package
- Implement SLAs and error notifications

&nbsp;

## ✅ Milestone Checkpoint

- ✅ You’ve built and deployed a production-grade dbt project with orchestration.
- ✅ You understand dbt’s role in modern data platform architecture.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

| 🎯 Learning Objectives                                                                                                                         | 📚 Free Resources                                                                                                                                                                  | 🛠️ Practice Tasks                                                                                                                     | ✅ Milestone Checkpoint                                        |
| ---------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| - What is dbt? Why use it?<br>- dbt Core vs dbt Cloud<br>- Basic architecture (Models, Sources, Seeds, Snapshots, Tests)<br>- Jinja templating | - [dbt Learn - Getting Started](https://docs.getdbt.com/docs/introduction)<br>- [dbt Cloud Free Tier](https://www.getdbt.com/signup/)<br>- YouTube: “dbt for Beginners” (Coalesce) | - Set up dbt Cloud account<br>- Connect to sample warehouse (e.g., Snowflake)<br>- Create first dbt project<br>- Build a simple model | - Explain dbt basics<br>- One model and source in your project |
