# Overview

- [Overview](#overview)
- [Check git version](#check-git-version)
- [Set User Name \& User Email](#set-user-name--user-email)
- [Set the default Editor](#set-the-default-editor)
- [Set initial branch](#set-initial-branch)
- [Check config setting](#check-config-setting)
- [Creating Git Folder](#creating-git-folder)
- [Go to the folder](#go-to-the-folder)
- [Initialize git repository](#initialize-git-repository)
- [Check lists of directory / files](#check-lists-of-directory--files)
- [Check lists of all directory / files (also hidden)](#check-lists-of-all-directory--files-also-hidden)
- [See status](#see-status)
- [Staging files](#staging-files)
- [Committing the staged files](#committing-the-staged-files)
- [Skipping the staging area](#skipping-the-staging-area)
- [Removing files](#removing-files)
- [Renaming or moving file](#renaming-or-moving-file)
- [Viewing the staged/unstaged changes](#viewing-the-stagedunstaged-changes)
- [Viewing the history](#viewing-the-history)
- [Viewing a commit](#viewing-a-commit)
- [Unstaging files (undoing git add)](#unstaging-files-undoing-git-add)
- [Discarding local changes](#discarding-local-changes)
- [Restoring an earlier version of a file](#restoring-an-earlier-version-of-a-file)

&nbsp;

&nbsp;

&nbsp;

# Check git version

```bash
 git --version
```

&nbsp;

&nbsp;

# Set User Name & User Email

```bash
 git config --global user.name "USERNAME"
```

```bash
 git config --global user.email "EMAIL"
```

&nbsp;

Use `global` to set the username and e-mail for every repository on your computer

&nbsp;

If you want to set the username/e-mail for just the current repo, you can remove global

```bash
 git config user.name "USERNAME"
```

```bash
 git config user.email "EMAIL"
```

&nbsp;

&nbsp;

# Set the default Editor

```bash
 git config --global core.editor "EDITOR-NAME"
```

&nbsp;

&nbsp;

# Set initial branch

```bash
 git config --global init.defaultBranch "BRANCH-NAME"
```

&nbsp;

&nbsp;

# Check config setting

```bash
 git config --list
```

&nbsp;

&nbsp;

# Creating Git Folder

```bash
 mkdir "FOLDER-NAME"
```

&nbsp;

&nbsp;

# Go to the folder

```bash
 cd "FOLDER-NAME"
```

&nbsp;

&nbsp;

# Initialize git repository

```bash
 git init
```

&nbsp;

&nbsp;

# Check lists of directory / files

```bash
 ls
```

&nbsp;

&nbsp;

# Check lists of all directory / files (also hidden)

```bash
 ls -la
```

&nbsp;

&nbsp;

# See status

full status

```bash
 git status
```

&nbsp;

Short status

```bash
 git status -s
```

&nbsp;

&nbsp;

# Staging files

stage a file

```bash
 git add FILENAME
```

&nbsp;

stage multiple file

```bash
 git add FILENAME1 FILENAME2
```

&nbsp;

Stage the current directory & all its files

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

Stage a file with a pattern

```bash
 git add \*.extension
```

&nbsp;

&nbsp;

# Committing the staged files

Commits with a one single-line message

```bash
 git commit -m "MESSAGE"
```

&nbsp;

Open the default editor to type a long message

```bash
 git commit
```

&nbsp;

&nbsp;

# Skipping the staging area

```bash
 git commit -a -m "MESSAGE"
```

&nbsp;

&nbsp;

# Removing files

Remove from working directory & staging area

```bash
 git rm FILENAME
```

&nbsp;

Remove from staging area only

```bash
 git rm --cached FILENAME
```

&nbsp;

&nbsp;

# Renaming or moving file

```bash
 git mv OLD_NAME NEW_NAME
```

&nbsp;

&nbsp;

# Viewing the staged/unstaged changes

Shows unstaged changes

```bash
 git diff
```

&nbsp;

Shows staged changes

&nbsp;

```bash
 git diff-staged
```

&nbsp;

Same as the above

```bash
 git diff --cached
```

&nbsp;

&nbsp;

# Viewing the history

Full history

```bash
 git log
```

&nbsp;

Summary

```bash
 git log --oneline
```

&nbsp;

Lists the commits from the oldest to the newest

```bash
 git log --reverse
```

&nbsp;

&nbsp;

# Viewing a commit

Shows the given commit details

```bash
 git show 921a2ff
```

Show the full commit id, tree, parent, author, committer

```bash
git show -s --pretty=raw 508d1ad
```

&nbsp;

Shows the last commit

```bash
 git show HEAD
```

&nbsp;

Two steps before the last commit

```bash
 git show HEAD-2
```

&nbsp;

Shows the version of file.js stored in the last commit

```bash
 git show HEAD:file.js
```

&nbsp;

&nbsp;

# Unstaging files (undoing git add)

Copies the last version of file is from repo to index

```bash
 git restore --staged filename
```

&nbsp;

&nbsp;

# Discarding local changes

Copies file from index to working directory

```bash
 git restore file
```

&nbsp;

Restores multiple files in working directory

```bash
 git restore file1 file2
```

&nbsp;

Discards all local changes (except untracked files)

```bash
 git restore .
```

&nbsp;

Removes all untracked files

```bash
 git clean -fd
```

&nbsp;

&nbsp;

# Restoring an earlier version of a file

```bash
 git restore--source-HEAD-2 file.js
```

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
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;

| Term              | Description                         |
| ----------------- | ----------------------------------- |
| Working Directory | Where you write code                |
| Staging Area      | Where you prepare commits           |
| Local Repository  | Your local Git history              |
| Remote Repository | GitHub/GitLab, where code is shared |
| Commit            | A snapshot of your code             |
| Push              | Upload your work to GitHub          |
| Pull              | Get others' changes from GitHub     |

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
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
