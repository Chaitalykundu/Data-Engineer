# Overview

- [Overview](#overview)
- [Summary](#summary)
- [Git log](#git-log)
- [Syntax](#syntax)
  - [Full commit history](#full-commit-history)
    - [Example of Output](#example-of-output)
  - [One-line summary per commit](#one-line-summary-per-commit)
    - [Example of Output](#example-of-output-1)
  - [Shows what files were changed and how many lines](#shows-what-files-were-changed-and-how-many-lines)
    - [Example of Output](#example-of-output-2)
- [Export Git history in a readable way](#export-git-history-in-a-readable-way)
  - [Breakdown](#breakdown)

&nbsp;

&nbsp;

&nbsp;

# Summary

| Command                         | Description                                      |
| ------------------------------- | ------------------------------------------------ |
| `git log`                       | Full commit history                              |
| `git log --oneline`             | One-line summary per commit                      |
| `git log --graph`               | ASCII tree showing branch merges                 |
| `git log --stat`                | Shows what files were changed and how many lines |
| `git log -p`                    | Shows full diff (code changes) for each commit   |
| `git log --author="Name"`       | Filter by author                                 |
| `git log filename.txt`          | Show commits that changed a specific file        |
| `git log --since="2 weeks ago"` | Commits in the last 2 weeks                      |
| `git log --grep="keyword"`      | Search by commit message                         |
| `git log -n 5`                  | Last 5 commits only                              |

&nbsp;

&nbsp;

&nbsp;

# Git log

The `git log` command is used to display the commit history of a Git repository.

It provides a comprehensive list of all the commits made to the repository, including the **author, date, and commit message** for each commit. In short it helps to see who did what, when, and why.

&nbsp;

&nbsp;

# Syntax

## Full commit history

The basic syntax of the git log command is:

```bash
git log
```

Git log shows all the logs, i.e the commit history of the git repository.

&nbsp;

&nbsp;

### Example of Output

```sql
commit 5f3c2d7a6f84fa1ee72a329be2c5e9e9303b4f10
Author: Chaitaly Kundu <chaitaly@example.com>
Date:   Sat Jun 14 01:23 2025

    Add footer to homepage
```

&nbsp;

&nbsp;

## One-line summary per commit

```bash
git log --oneline
```

&nbsp;

### Example of Output

```sql
b287e40 (HEAD -> master, origin/master, origin/HEAD) add, commit
59b99ee add git
e83f4a8 git added
ad7f2e4 Initial commit
```

&nbsp;

&nbsp;

## Shows what files were changed and how many lines

```bash
git log --stat
```

&nbsp;

### Example of Output

```sql
commit 3c9a5e2 Add login page
Author: Chaitaly <you@example.com>
Date:   Sat Jun 14 12:00:00 2025 +0530

 login.html       | 10 ++++++++++
 style.css        |  4 ++++
 2 files changed, 14 insertions(+)
```

&nbsp;

&nbsp;

# Export Git history in a readable way

```bash
git log --pretty=format:"### %h - %an, %ad%n- %s%n" --date=short > HISTORY.md
```

&nbsp;

## Breakdown

| Part           | Meaning                     |
| -------------- | --------------------------- |
| `%h`           | Short commit hash           |
| `%an`          | Author name                 |
| `%ad`          | Author date                 |
| `%s`           | Commit message              |
| `--date=short` | Format date as `YYYY-MM-DD` |

&nbsp;
