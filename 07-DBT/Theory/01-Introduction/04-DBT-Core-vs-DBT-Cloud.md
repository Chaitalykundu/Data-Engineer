# dbt Core vs dbt Cloud

| Feature/Aspect             | **dbt Core** (Open-source CLI)           | **dbt Cloud** (Managed SaaS Platform)   |
| -------------------------- | ---------------------------------------- | --------------------------------------- |
| 💻 **Interface**           | Command Line Interface (CLI)             | Web-based GUI + CLI                     |
| 💡 **Usage Type**          | Free & open-source                       | Paid (with a free tier)                 |
| 🛠️ **Setup & Hosting**     | Self-managed (your machine or server)    | Fully managed by dbt Labs               |
| 📅 **Scheduling**          | External tool needed (Airflow, Cron)     | Built-in job scheduler                  |
| 🔐 **Authentication**      | Manual (API keys, .env)                  | Secure OAuth + SSO options              |
| ✅ **CI/CD Integration**   | Manual setup (GitHub Actions, GitLab CI) | Built-in CI with Git integration        |
| 📈 **Documentation**       | Generates locally                        | Hosted docs, searchable                 |
| 👩‍💻 **Collaboration**       | Git-based, local                         | Teams collaborate via web UI            |
| 🧪 **Testing & Lineage**   | Local, manual visualization              | Interactive web-based lineage + test UI |
| 🔔 **Alerts & Monitoring** | Manual setup via scripts or tools        | Built-in email/Slack notifications      |
| 🔌 **IDE Support**         | Use your own (VS Code, etc.)             | Built-in SQL Editor in browser          |

&nbsp;

&nbsp;

# dbt Core Overview

- Local development using terminal and text editor
- Ideal for:
  - Developers comfortable with CLI & Git
  - Fully customizable deployments
  - Using external schedulers (Airflow, Jenkins)

- Free and flexible, but requires more setup and DevOps work

&nbsp;

&nbsp;

# dbt Cloud Overview

- Web-based platform hosted by dbt Labs
- Includes:
  - Built-in scheduler
  - Hosted documentation
  - Interactive DAG & test results
  - Easy integration with GitHub, GitLab, Bitbucket

- Has a free tier with core features, then scales to team & enterprise plans
- Best for teams who want ease of use, scheduling, monitoring, and collaboration without managing

&nbsp;

&nbsp;

# When to Use What?

| Scenario                                       | Use          |
| ---------------------------------------------- | ------------ |
| You're a solo dev comfortable with CLI         | ✅ dbt Core  |
| You want a quick start and easy setup          | ✅ dbt Cloud |
| You need advanced scheduling & CI/CD built-in  | ✅ dbt Cloud |
| You already have Airflow or orchestrator setup | ✅ dbt Core  |
| You want full control over environment/config  | ✅ dbt Core  |
| You need team collaboration, monitoring, UI    | ✅ dbt Cloud |

&nbsp;

&nbsp;

&nbsp;
