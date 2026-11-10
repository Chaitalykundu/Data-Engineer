# Content

- [Content](#content)
- [IAM User (Identity and Access Management User)](#iam-user-identity-and-access-management-user)
- [Interview Question:](#interview-question)

&nbsp;

&nbsp;

&nbsp;

# IAM User (Identity and Access Management User)

An IAM User is an identity created in AWS to represent a person or application that needs access to AWS resources.

&nbsp;

&nbsp;

An IAM User can have:

- A username and password for AWS Management Console access.
- Access keys (Access Key ID and Secret Access Key) for programmatic access through AWS CLI, SDKs, or APIs.
- Permissions through IAM policies, either directly or through IAM groups.

&nbsp;

&nbsp;

| Concept           | Meaning                                           | Example                |
| ----------------- | ------------------------------------------------- | ---------------------- |
| IAM User          | Identity representing a person or application     | `data_engineer_user`   |
| Username          | Unique name assigned to the user                  | `chaitaly`             |
| Password          | Used to access AWS Management Console             | Console login password |
| Access Key ID     | Public identifier for programmatic authentication | `AKIA...`              |
| Secret Access Key | Secret credential used with the access key        | Stored securely        |
| IAM Policy        | Defines what actions the user can perform         | `S3ReadOnlyPolicy`     |
| IAM Group         | Collection of IAM users with common permissions   | `DataEngineers`        |

&nbsp;

&nbsp;

Example: Data Engineer accessing S3

1. Create an IAM User named data_engineer.
2. Create an IAM policy allowing read access to a specific S3 bucket.
3. Attach the policy to the user or an IAM group.
4. The user authenticates using AWS credentials.
5. The user can read permitted S3 objects.

&nbsp;

&nbsp;

Important Points

- IAM Users are identities, not permissions.
- Permissions are defined through IAM policies.
- Follow the principle of least privilege.
- Avoid sharing IAM user credentials.
- Prefer IAM Roles and temporary credentials for AWS workloads such as Lambda, Glue and EC2 instead of creating long-lived access keys.

&nbsp;

&nbsp;

# Interview Question:

1. What is the difference between an IAM User and an IAM Role?

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
