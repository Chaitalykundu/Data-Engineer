# Overview

- [Overview](#overview)
- [Staging](#staging)
- [States of files](#states-of-files)
- [Git Staging Environment / Workflow](#git-staging-environment--workflow)
- [Step-by-Step Git Workflow](#step-by-step-git-workflow)
- [Commands](#commands)
  - [Stage **any particular file**](#stage-any-particular-file)
  - [Stage **more than one file**](#stage-more-than-one-file)
  - [Stage **all changed files**](#stage-all-changed-files)
- [Why Use Staging](#why-use-staging)

&nbsp;

&nbsp;

&nbsp;

# Staging

Staging is the step where you prepare your changes before saving them to the repository with a commit.

&nbsp;

&nbsp;

# States of files

Files in your Git repository folder can be in one of 2 states:

- **Untracked** - files that are in your working directory, but not added to the repository

- **Tracked** - files that Git knows about and are added to the repository

&nbsp;

&nbsp;

When you first add files to an empty repository, they are all untracked. To get Git to track them, you need to **stage** them, or **add** them to the staging environment.

&nbsp;

&nbsp;

# Git Staging Environment / Workflow

The Git workflow defines how your code moves from writing to version control to collaboration — using Git commands in a step-by-step process.

&nbsp;

As we are working, we may be adding, editing and removing files. But whenever we hit a milestone or finish a part of the work, we should add the files to a Staging Environment.

&nbsp;

<img src="./assets/git workflow.png">

&nbsp;

**_A `working directory` in Git is the local environment where files are stored and modified as part of a project. It reflects the current state of the project's files, allowing developers to edit, add, or delete files._**

**_`Staged files` are files that are ready to be committed to the repository we are working on._**

**_`Staging area` is Where you prepare files before commit_**

&nbsp;

&nbsp;

# Step-by-Step Git Workflow

| Step | Stage             | Command                           | Description                               |
| ---- | ----------------- | --------------------------------- | ----------------------------------------- |
| 1️⃣   | Working Directory | You edit code/files               | Your current project folder               |
| 2️⃣   | Staging Area      | `git add file.txt` or `git add .` | Prepares files for commit                 |
| 3️⃣   | Local Repository  | `git commit -m "message"`         | Saves snapshot to your local Git database |
| 4️⃣   | Remote Repository | `git push origin main`            | Sends commits to GitHub (or GitLab, etc.) |

&nbsp;

&nbsp;

&nbsp;

# Commands

## Stage **any particular file**

```bash
git add FILENAME
```

&nbsp;

## Stage **more than one file**

```bash
git add FILENAME1, FILENAME2, FILENAME3
```

&nbsp;

## Stage **all changed files**

```bash
git add .
```

or

```bash
git add --all
```

or

```bash
git add -a
```

&nbsp;

&nbsp;

# Why Use Staging

- **Control**: You can stage only some files/lines.
- **Review**: Double-check before committing.
- **Partial commits**: Commit parts of a file (e.g., using git add -p).

&nbsp;

&nbsp;

&nbsp;

&nbsp;
