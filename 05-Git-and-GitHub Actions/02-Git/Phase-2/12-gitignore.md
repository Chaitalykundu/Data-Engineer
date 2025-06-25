# Overview

- [Overview](#overview)
- [.gitignore file](#gitignore-file)
- [When to use](#when-to-use)
- [How to Create a `.gitignore` File](#how-to-create-a-gitignore-file)
- [How Git Applies .gitignore](#how-git-applies-gitignore)

&nbsp;

&nbsp;

&nbsp;

# .gitignore file

The `.gitignore` file tells Git which files or folders to ignore in a repository.

These files are not tracked, not staged, and not committed.

&nbsp;

&nbsp;

# When to use

- Don't want to track some files
- node modules, API keys, secret, Environment-specific files (e.g. `.env`, `node_modules/`)
- get template online, patterns can be tricky
- To avoid committing:
  - Temporary files (e.g. `*.log`, `*.tmp`)
  - Build artifacts (e.g. `dist/`, `bin/`)
  - IDE/editor settings (e.g. `.vscode/`, `.idea/`)

&nbsp;

&nbsp;

# How to Create a `.gitignore` File

1. In your repo root, create a file named `.gitignore`

   ```bash
   touch .gitignore
   ```

&nbsp;

2. Add patterns inside the file

   ```gitignore
   # ignore a folder
   foldername/

   # ignore a file
   .filename

    # Ignore all .log files
   *.log

   # IDE settings
   .vscode/
   .idea/
   ```

&nbsp;

&nbsp;

# How Git Applies .gitignore

- It works only for untracked files.
- If you’ve already committed a file, `.gitignore` won’t remove it.

Use `git rm --cached filename` to stop tracking it.

&nbsp;

&nbsp;

| Task                 | Command                                                     |
| -------------------- | ----------------------------------------------------------- |
| Generate template    | [gitignore.io](https://www.toptal.com/developers/gitignore) |
| Untrack ignored file | `git rm --cached <file>`                                    |
| See ignored files    | `git status --ignored`                                      |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
