# Overview

- [Overview](#overview)
- [Repository](#repository)
- [Types of Repositories](#types-of-repositories)
- [What's Inside a Repository?](#whats-inside-a-repository)
- [Create a Repository](#create-a-repository)
  - [Local (on your computer)](#local-on-your-computer)
    - [Initializing a new repository: `git init`](#initializing-a-new-repository-git-init)
- [Remote (on GitHub):](#remote-on-github)
- [Check lists of directory / files](#check-lists-of-directory--files)
- [Check lists of all directory / files (also hidden)](#check-lists-of-all-directory--files-also-hidden)
- [Note](#note)
- [Working with a Repository](#working-with-a-repository)

&nbsp;

&nbsp;

&nbsp;

# Repository

A repository is a **collection of files and directories** that are stored together.

It stores your **code**, **files**, **commit history**, and **branches** — all in one place.

It is a way to store and manage the code.

A repository is like a folder for your project that Git tracks.

&nbsp;

&nbsp;

# Types of Repositories

| Type                  | Description                                                    |
| --------------------- | -------------------------------------------------------------- |
| **Local Repository**  | On your computer (created using `git init`)                    |
| **Remote Repository** | Stored on GitHub, GitLab, Bitbucket, etc. (shared with others) |

&nbsp;

&nbsp;

# What's Inside a Repository?

- Source code files (.js, .py, .html, etc.)
- Configuration files (.gitignore, README.md)
- .git/ folder — Git metadata (hidden)
- Commit history
- Branches
- Tags

&nbsp;

&nbsp;

&nbsp;

# Create a Repository

## Local (on your computer)

```bash
 mkdir "FOLDER-NAME"
```

```bash
cd "FOLDER-NAME"
```

&nbsp;

`mkdir` **makes** a new directory.

`cd` **changes** the **current working directory**.

&nbsp;

### Initializing a new repository: `git init`

To initialize a new repo, you'll use the following command.

```bash
git init
```

&nbsp;

&nbsp;

# Remote (on GitHub)

- Go to `https://github.com`
- Click on “New repository”
- Give it a name, choose public/private, and create it
- Copy the remote URL and run:

  ```bash
  git remote add origin https://github.com/username/PROEJECT-NAME.git
  git push -u origin main
  ```

&nbsp;

&nbsp;

&nbsp;

# Check lists of directory / files

```bash
ls
```

`ls` will **list** the files in the directory

&nbsp;

&nbsp;

# Check lists of all directory / files (also hidden)

```bash
ls -la
```

&nbsp;

&nbsp;

# Note

`git init` is a one-time command you use during the initial setup of a new repo.

Executing this command Git will create a hidden folder `.git` in your current working directory to keep track of changes.

This will also create a **new main branch**.

&nbsp;

&nbsp;

# Working with a Repository

| Action         | Git Command               |
| -------------- | ------------------------- |
| Clone a repo   | `git clone <URL>`         |
| Check status   | `git status`              |
| Add files      | `git add .`               |
| Commit changes | `git commit -m "message"` |
| Push to GitHub | `git push origin main`    |
| Pull updates   | `git pull origin main`    |
