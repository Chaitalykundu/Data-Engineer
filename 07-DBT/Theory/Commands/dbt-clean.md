# Overview

- [Overview](#overview)
- [dbt clean](#dbt-clean)
- [Example](#example)
- [Why do we use it?](#why-do-we-use-it)
- [Important distinction](#important-distinction)
- [Questions](#questions)
- [Answers](#answers)
  - [1. if I'm adding files in .gitignore file then why to use `dbt clean`](#1-if-im-adding-files-in-gitignore-file-then-why-to-use-dbt-clean)

&nbsp;

&nbsp;

&nbsp;

# dbt clean

In dbt, `dbt clean` is used to delete generated/temporary files and directories from your dbt project.

This command removes the directories configured in `clean-targets` inside `dbt_project.yml` file.


&nbsp;

&nbsp;

# Example

```
clean-targets:
  - "target"
  - "dbt_packages"
```

So

```
Before dbt clean:

target/
dbt_packages/
models/
macros/

     ↓ dbt clean

After dbt clean:

models/
macros/
```

&nbsp;

&nbsp;

# Why do we use it?

Common reasons:

- Remove old compiled SQL
- Remove previous dbt execution artifacts
- Remove installed packages
- Resolve stale/corrupted generated files
- Start with a clean local dbt environment

&nbsp;

&nbsp;

# Important distinction

`dbt clean` does NOT clean your Snowflake tables/views.

It only removes the local directories/files configured under `clean-targets`.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Questions

1. if I'm adding files in .gitignore file then why to use `dbt clean`

&nbsp;

&nbsp;

# Answers

## 1. if I'm adding files in .gitignore file then why to use `dbt clean`

```
.gitignore
    ↓
Controls what Git tracks/commits

dbt clean
    ↓
Deletes generated files from your local machine
```

| Feature            | `.gitignore`               | `dbt clean`                        |
| ------------------ | -------------------------- | ---------------------------------- |
| Purpose            | Prevent Git tracking       | Delete local generated directories |
| Deletes files?     | ❌ No                       | ✅ Yes                              |
| Affects Git?       | ✅ Yes                      | Indirectly                         |
| Affects Snowflake? | ❌ No                       | ❌ No                               |
| Common targets     | `target/`, `dbt_packages/` | `target/`, `dbt_packages/`         |


&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
