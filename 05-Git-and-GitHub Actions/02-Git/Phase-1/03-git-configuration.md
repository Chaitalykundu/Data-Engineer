# Overview

- [Overview](#overview)
- [Git configuration](#git-configuration)
- [Check git version](#check-git-version)
- [Set Your Identity](#set-your-identity)
  - [Username](#username)
  - [Email](#email)
- [View Your Configurations](#view-your-configurations)
- [Set the default Editor](#set-the-default-editor)
- [Set initial branch](#set-initial-branch)
- [Edit the Config File Manually](#edit-the-config-file-manually)
- [Levels of Git Configuration](#levels-of-git-configuration)
  - [Tip](#tip)
- [Where Config Files Are Stored](#where-config-files-are-stored)
- [Common Git Configurations](#common-git-configurations)

&nbsp;

&nbsp;

&nbsp;

# Git configuration

Git configuration allows you to set up your identity, editor, behavior, and preferences.

It’s one of the first things you should do after installing Git.

&nbsp;

&nbsp;

# Check git version

```bash
 git --version
```

&nbsp;

&nbsp;

# Set Your Identity

## Username

```bash
git config --global user.name "USER_NAME"
```

&nbsp;

## Email

```bash
git config --global user.email "EMAIL"
```

&nbsp;

&nbsp;

# View Your Configurations

```bash
git config --list
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

# Edit the Config File Manually

```bash
git config --global --edit
```

It opens the config file in your default editor.

&nbsp;

&nbsp;

# Levels of Git Configuration

| Level      | Scope                              | Command Example                                               |
| ---------- | ---------------------------------- | ------------------------------------------------------------- |
| `--system` | Applies to all users on the system | `git config --system user.name "Name"`                        |
| `--global` | Applies to the current user        | `git config --global user.name "Name"`                        |
| `--local`  | Applies only to current repository | `git config --local user.name "Name"` (default if none given) |

&nbsp;

## Tip

Use `--global` for identity (name, email). Use `--local` for repo-specific settings.

&nbsp;

&nbsp;

# Where Config Files Are Stored

| Level  | File Location                      |
| ------ | ---------------------------------- |
| System | `/etc/gitconfig`                   |
| Global | `~/.gitconfig`                     |
| Local  | `./.git/config` (inside your repo) |

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
