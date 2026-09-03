# Questions

1. Tell me about yourself
2. Explain your project

&nbsp;

&nbsp;

# Answers

## 1. Tell me about yourself

My name is Chaitaly Kundu. I completed my B.Tech in Computer Science Engineering from Siliguri Institute of Technology. I have over 4 years of experience as a Data Engineer at Persistent Systems, mainly working with Snowflake and cloud-based data platforms.

I am SnowPro Core certified, and I have strong experience in Snowflake, Terraform, DBT, and SQL. I have worked on areas like RBAC, infrastructure automation, and CI/CD.

I started my career as a Data Engineer in 2022, where I worked on data extraction, Excel data validation, and building Streamlit applications for business teams.

Later, as a Senior Data Engineer, I worked on improving our data pipelines and automated Snowflake provisioning, which reduced deployment time from hours to minutes.

Currently, as a Lead Data Engineer, I mainly focus on infrastructure automation and Snowflake governance. I created reusable Terraform modules that reduced Snowflake setup effort by around 40%. I also manage Snowflake access and RBAC, and built a Streamlit dashboard to help manage and monitor users.

Overall, my main strength is automating data infrastructure and making Snowflake environments easier to manage and maintain.


&nbsp;

&nbsp;


## 2. Explain your project

 The core purpose of the project is to build a centralized, cloud-native data foundation on Snowflake that consolidates data from multiple enterprise sources — including AWS S3, Salesforce, and internal transactional databases — into a single governed and reliable platform.
 
In my current project, I work on a cloud-based data engineering platform where we ingest data from multiple source systems, mainly SQL Server and PostgreSQL, and load it into Snowflake for analytics and reporting.

For data ingestion, we use Fivetran as the connector. It extracts data from the source systems and loads it into the raw layer in Snowflake. Once the data is available in Snowflake, we use dbt for ELT transformations, where the raw data is cleaned, standardized, and transformed into business-ready datasets.

On the infrastructure side, we use Terraform extensively to provision and manage our Snowflake and AWS resources through Infrastructure as Code. This is actually one of my primary areas of responsibility.

For infrastructure provisioning, we use **Terraform**. Instead of manually creating Snowflake and cloud resources, we manage infrastructure as code. Depending on the requirement, this includes Snowflake databases, schemas, warehouses, roles, grants, and AWS resources such as S3 buckets and IAM configurations. This makes our infrastructure repeatable and consistent across environments.

I mainly work on Snowflake infrastructure automation, user onboarding, access management, and RBAC. Instead of manually creating users and granting permissions, we manage these through Terraform. I work on creating and maintaining users, roles, role hierarchies, warehouses, databases and schemas, and assigning the required privileges based on the user's business requirements.

For example, when a new user or team needs access, I first understand what level of access they require. Based on that, we assign the appropriate functional or access roles rather than directly granting privileges to individual users. These changes are implemented through Terraform, reviewed through GitHub, and deployed through our CI/CD process.

We also use AWS services as part of the infrastructure. S3 is used for storage and data integration use cases, IAM roles are used for secure access between AWS and Snowflake, and SNS is used for event notifications.

For version control and deployment, our code is maintained in GitHub, and GitHub Actions is used for CI/CD automation. Changes go through pull requests and code reviews before being promoted to higher environments.

For monitoring, we use Datadog. I have worked on monitoring Snowflake workloads and dynamic table execution, including identifying failures and cases where execution exceeds expected time limits.

We follow Agile methodology and use Jira for sprint planning, tracking stories, defects, and project-related documentation.
