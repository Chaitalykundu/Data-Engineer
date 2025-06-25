# Overview

- [Overview](#overview)
- [Cloning](#cloning)
- [Basic Syntax](#basic-syntax)
  - [Example](#example)
    - [Explanation](#explanation)
- [Common Variants](#common-variants)
- [Example: Clone into Custom Folder](#example-clone-into-custom-folder)
- [Cloning is equivalent to](#cloning-is-equivalent-to)

&nbsp;

&nbsp;

&nbsp;

# Cloning

`git clone` is used to download a repository from a remote source (like GitHub) to your local machine.

It's one of the first steps when you want to contribute to a project or start working on code that's already hosted remotely.

&nbsp;

&nbsp;

# Basic Syntax

```bash
git clone <repository-url>
```

&nbsp;

## Example

```bash
git clone https://github.com/ChaitalyKundu/awesome-project.git
```

&nbsp;

### Explanation

This will:

- Create a folder named **awesome-project**
- Download the entire repository (code, branches, history, etc.)
- Set the remote as origin

&nbsp;

&nbsp;

# Common Variants

| Command                         | What it does                            |
| ------------------------------- | --------------------------------------- |
| `git clone <url>`               | Clone into a folder with same repo name |
| `git clone <url> <folder-name>` | Clone into a custom-named folder        |
| `git clone --depth 1 <url>`     | Shallow clone (only latest commit)      |
| `git clone --branch dev <url>`  | Clone a specific branch                 |

&nbsp;

&nbsp;

# Example: Clone into Custom Folder

```bash
git clone https://github.com/ChaitalyKundu/awesome-project.git my-folder
```

Now your repo is downloaded in a folder called **my-folder**.

&nbsp;

&nbsp;

# Cloning is equivalent to

```bash
git init
git remote add origin <url>
git fetch
git checkout
```

but done automatically in one step.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
