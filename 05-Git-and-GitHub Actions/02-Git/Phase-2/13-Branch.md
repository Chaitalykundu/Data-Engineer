# Overview

- [Overview](#overview)
- [Branch](#branch)
- [Why Branches?](#why-branches)
- [Common Branch Commands](#common-branch-commands)

&nbsp;

&nbsp;

&nbsp;

# Branch

A branch in Git is like a separate timeline of your project. It lets you work on new features, bug fixes, or experiments without affecting the main codebase.

&nbsp;

&nbsp;

# Why Branches?

- Work independently from **main** (or **master**)
- Test new features safely
- Allow collaboration without conflicts

&nbsp;

&nbsp;

# Common Branch Commands

| Action                | Command                    | Description                         |
| --------------------- | -------------------------- | ----------------------------------- |
| List branches         | `git branch`               | Shows local branches                |
| Create branch         | `git branch feature1`      | Makes a new branch named `feature1` |
| Switch to branch      | `git checkout feature1`    | Moves to the `feature1` branch      |
| Create + switch       | `git checkout -b feature1` | Shorthand for both steps above      |
| Rename branch         | `git branch -m new-name`   | Rename current branch               |
| Delete branch (local) | `git branch -d feature1`   | Delete if merged                    |
| Force delete          | `git branch -D feature1`   | Delete even if unmerged             |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
