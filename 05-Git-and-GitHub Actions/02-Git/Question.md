# Questions from Study material

## VCS

1. What is Version Control System
2. What are the benefits of using Version Control System
3. What are the Types of Version Control System

&nbsp;

&nbsp;

## Git

### Introduction

1. What is git
2. What are the Use of Git
3. What does Git do
4. What are the Features of Git
5. What are the steps to Work with Git

&nbsp;

&nbsp;

### Github

1. What is git
2. WHat are the features of github

&nbsp;

&nbsp;

# Repository

1. What is repository
2. What are the Types of Repositories
3. How to create a repository
4. How to initialize a repo
5. How many ties we need to use `git init` command in a project
6. What will happen after running `git init` command

&nbsp;

&nbsp;

# Status

1. How to check status of a repo
2. What are the Purpose of `git status` command
3. How to check short status
4. Why do we Use short status

&nbsp;

&nbsp;

# Staging

1. What is staging
2. What are the States of files
3. What are Staged files
4. What is Staging Area
5. Why do we Use Staging
6. What is git workflow

&nbsp;

&nbsp;

# Commit

1. What is commit
2. Which is consider as change point
3. Is it necessary to pass a commit message
4. Which command automatically stage every changed
5. What is Git snapshot
6. How do Git Snapshots Work

&nbsp;

&nbsp;

# Atomic Commit

1. What is Atomic Commit
2. Why do we Use Atomic Commits

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

## Differences

### Git vs Git bash

1. Does Git and Git bash same

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Random Questions

1. What is Git snapshot

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# 1. What is git?

```md
Git is a distributed version control system and source code management (SCM) system with an emphasis to handle small and large projects with speed and efficiency
```

&nbsp;

# 2. What is the command you can use to write a commit message?

```md
The command which is used to write a commit message is `git commit -m "commit message"`.
We can also use `git commit -a`. This automatically stage all tracked, modified files before the commit
```

&nbsp;

&nbsp;

# How can we clone a repo and and push it in different repo

Steps :

1. clone the repo `git clone <repo_link>`
2. delete the `.git` file
3. `git init`
4. `git add .`
5. `git commit -m "message"`
6. `git branch -M master`
7. `git remote add origin https://github.com/Chaitalykundu/aa.git`
8. `git push -u origin master`

&nbsp;

&nbsp;

&nbsp;
