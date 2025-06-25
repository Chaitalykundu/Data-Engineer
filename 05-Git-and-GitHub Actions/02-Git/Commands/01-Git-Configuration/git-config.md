# Overview

- [Overview](#overview)
  - [Set User Name](#set-user-name)
  - [Set User Email I'D](#set-user-email-id)
  - [Set the default Editor](#set-the-default-editor)
  - [Set initial branch](#set-initial-branch)
  - [Check the setting](#check-the-setting)
- [Common Git Configurations](#common-git-configurations)

&nbsp;

&nbsp;

&nbsp;

| Level      | Scope                              | Command Example                                               |
| ---------- | ---------------------------------- | ------------------------------------------------------------- |
| `--system` | Applies to all users on the system | `git config --system user.name "Name"`                        |
| `--global` | Applies to the current user        | `git config --global user.name "Name"`                        |
| `--local`  | Applies only to current repository | `git config --local user.name "Name"` (default if none given) |

&nbsp;

&nbsp;

&nbsp;

Get and set configuration variables that controls all facets of how git looks and operates

&nbsp;

Use `global` to set the username and e-mail for every repository on your computer

If you want to set the username/e-mail for just the current repo, you can remove global

&nbsp;

&nbsp;

## Set User Name

> git config --global user.name "USERNAME"

&nbsp;

## Set User Email I'D

> git config --global user.email "EMAIL"

&nbsp;

## Set the default Editor

> git config --global core.editor "EDITOR-NAME"

&nbsp;

## Set initial branch

> git config --global init.defaultBranch "BRANCH-NAME"

&nbsp;

## Check the setting

> git config --list

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Common Git Configurations

| Command                                         | Purpose                                          |
| ----------------------------------------------- | ------------------------------------------------ |
| `git config --global core.editor "code --wait"` | Use VS Code as default Git editor                |
| `git config --global merge.tool vscode`         | Set merge tool to VS Code                        |
| `git config --global init.defaultBranch main`   | Default branch name = `main` instead of `master` |
| `git config --global color.ui auto`             | Enable colored terminal output                   |
| `git config --global core.autocrlf input`       | Line ending handling (Mac/Linux)                 |
