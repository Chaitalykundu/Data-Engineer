# Overview

- [Overview](#overview)
- [Short status flags](#short-status-flags)
- [Commit](#commit)
  - [Note](#note)
- [Syntax](#syntax)
- [Commit Message Tips](#commit-message-tips)
- [Git Commit without Stage](#git-commit-without-stage)
- [Git Commit Log](#git-commit-log)
- [Common Git Commit Commands](#common-git-commit-commands)
- [Important Notes](#important-notes)
- [Git snapshot](#git-snapshot)
  - [Git Workflow with Snapshots](#git-workflow-with-snapshots)
  - [How Git Snapshots Work](#how-git-snapshots-work)
- [Musketeers of Git](#musketeers-of-git)
  - [Commit Object](#commit-object)
  - [Tree Object](#tree-object)
  - [Blob object](#blob-object)

&nbsp;

&nbsp;

&nbsp;

# Short status flags

| flags | Descriptions         |
| ----- | -------------------- |
| ??    | Untracked files      |
| A     | Files added to stage |
| M     | Modified files       |
| D     | Deleted files        |

&nbsp;

&nbsp;

# Commit

A commit in Git is like a **snapshot** of your project at a particular moment in time.

&nbsp;

Since we have finished our work, we are ready move from `stage` to `commit` for our repo.

Adding commits keep track of our progress and changes as we work.

Git considers each commit **_change point or "save point"_**. It is
a point in the project you can go back to if you find a bug, or want to make a change.

By adding clear messages to each commit, it is easy for yourself (and others) to see what has changed and when.

&nbsp;

## Note

**When we commit, we should always include a message.**

&nbsp;

&nbsp;

# Syntax

```bash
git commit -m "COMMIT-MESSAGE"
```

&nbsp;

&nbsp;

# Commit Message Tips

- Always write clear, descriptive messages.
- **Use the present tense**: "Fix bug" instead of "Fixed bug"
- **Start with a verb**: "Add", "Fix", "Remove", "Update" etc.

&nbsp;

&nbsp;

# Git Commit without Stage

Sometimes, when you make small changes, using the staging environment seems like a waste of time. It is possible to commit changes directly, skipping the staging environment.

The `-a` option will automatically stage every changed, already tracked file.

```bash
git commit -a -m "COMMIT-MESSAGE"
```

&nbsp;

&nbsp;

# Git Commit Log

To view the history of commits for a repository, you can use the `log` command:

```bash
git log
```

&nbsp;

Summary

```bash
 git log --oneline
```

&nbsp;

&nbsp;

# Common Git Commit Commands

| Command                      | Purpose                                          |
| ---------------------------- | ------------------------------------------------ |
| `git commit -m "message"`    | Commit staged changes with message               |
| `git commit -a -m "message"` | Add **and** commit tracked files (skips staging) |
| `git commit --amend`         | Change the message of the **last commit**        |
| `git log`                    | View commit history                              |
| `git show <commit-id>`       | See details of a specific commit                 |

&nbsp;

&nbsp;

# Important Notes

If you try `git commit` without staging, Git will say:

```bash
"nothing to commit, working tree clean"
```

&nbsp;

You can undo the last commit (safely) using:

```bash
git reset --soft HEAD~1
```

&nbsp;

&nbsp;

# Git snapshot

A git snapshot is a specific point in time in the history of code.

It represents a specific version of code, including all files and folders that were present at that time.

&nbsp;

When you commit in Git, you’re actually saving a snapshot of the files that are staged — not just a list of changes.

&nbsp;

Each snapshot is stored as an **object** and each object is identified by a **unique hash code**.

Every hash (commit) depends on it's previous commit

&nbsp;

&nbsp;

## Git Workflow with Snapshots

```pgsql
Working Directory → Staging Area → Repository
                    (Snapshot Prepared)     (Snapshot Saved with Commit)
```

&nbsp;

&nbsp;

## How Git Snapshots Work

Unlike other version control systems (like SVN) that store differences (deltas) between file versions, Git stores the full content of files (as blobs) as snapshots.

If a file hasn't changed since the last snapshot, Git simply links to the previous version instead of storing it again (which saves space).

&nbsp;

&nbsp;

# Musketeers of Git

There are three musketeers of git

- Commit Object
- Tree Object
- Blob object

&nbsp;

&nbsp;

## Commit Object

Each commit in the project is stored in a `.git` folder.

It contains the following information

- Tree Object
- Parent commit object
- Author
- Committer
- Commit Message

&nbsp;

&nbsp;

## Tree Object

Tree object is a container for all the files and folders in the project.

It contains the following information

- File Mode
- File Name
- File Hash
- Parent Tree Object

Everything is stored as **_key-value pairs_** in the tree project. This key is the filename and this value is the file hash

&nbsp;

&nbsp;

## Blob object

Blob object is present in tree object and contains teh actual file content.

This is the place where the file content is stored.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

```

```
