# Overview

- [Overview](#overview)
- [Git Status](#git-status)
- [Purpose](#purpose)
- [Command](#command)
  - [full status](#full-status)
    - [Example Output](#example-output)
  - [Short status](#short-status)
    - [Example Output](#example-output-1)
- [Common Meanings](#common-meanings)
- [Status Codes](#status-codes)
- [Why to Use short status](#why-to-use-short-status)

&nbsp;

&nbsp;

&nbsp;

# Git Status

We can check the **status** of any file using the `git status` command.

The `git status` command shows you what’s going on in your Git repository right now.

&nbsp;

&nbsp;

# Purpose

It tells us

- Which branch you are on
- Which files have been modified
- Which files are staged (ready to commit)
- Which files are not staged
- Which files are untracked (new files not being tracked by Git)

&nbsp;

&nbsp;

# Command

## full status

```bash
 git status
```

&nbsp;

### Example Output

```bash
$ git status
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
 modified:   index.html

Untracked files:
  (use "git add <file>..." to include in what will be committed)
 newfile.txt
```

&nbsp;

## Short status

```bash
 git status -s
```

&nbsp;

### Example Output

```bash
$ git status -s
 M index.html
?? about.html
```

- `M` means index.html is modified (unstaged)
- `??` means about.html is untracked

&nbsp;

&nbsp;

# Common Meanings

| Message                    | Meaning                                          |
| -------------------------- | ------------------------------------------------ |
| `modified:`                | File was changed but not staged                  |
| `untracked:`               | File is new and Git is not tracking it yet       |
| `Changes to be committed:` | These changes are **staged** and ready to commit |

&nbsp;

&nbsp;

# Status Codes

| Symbol      | Meaning                |
| ----------- | ---------------------- |
| `??`        | Untracked file         |
| `M`         | Modified file          |
| `A`         | Added file (staged)    |
| `D`         | Deleted file           |
| `R`         | Renamed file           |
| `C`         | Copied file            |
| `U`         | Unmerged (conflict)    |
| `` (space) | No change in that area |

&nbsp;

&nbsp;

# Why to Use short status

- Faster overview for pros and terminal lovers
- Clean and minimal
- Easy to integrate into scripts

&nbsp;

&nbsp;
