# Overview

- [Overview](#overview)
- [Atomic commit](#atomic-commit)
  - [Meaning of unit of work](#meaning-of-unit-of-work)
- [It should](#it-should)
- [Why Use Atomic Commits](#why-use-atomic-commits)
- [Example of Atomic commits](#example-of-atomic-commits)
- [Some Atomic commit feature](#some-atomic-commit-feature)

&nbsp;

&nbsp;

&nbsp;

# Atomic commit

n atomic commit is a commit that contains a single, complete, and coherent unit of work.

&nbsp;

In atomic commit, a commit should contain only one logical change.”

&nbsp;

It should be able to stand on its own, without depending on or affecting other commits. It should also have a clear and descriptive message that summarizes the changes made.

&nbsp;

&nbsp;

## Meaning of unit of work

Here **unit of work** varies from person to person.

For example, if we are creating a webpage. To someone, unit of work may be creating only header. To someone unit of work may be creating some section. To someone, unit of work may be styling the font only and so on.

&nbsp;

&nbsp;

# It should

- Do one thing only (fix one bug, add one feature, etc.)
- Be small and focused
- Be easily understandable

&nbsp;

&nbsp;

# Why Use Atomic Commits

| Benefit                 | Explanation                                                       |
| ----------------------- | ----------------------------------------------------------------- |
| 🧠 **Clarity**          | Easy to understand what changed and why                           |
| 🔁 **Easier rollbacks** | You can revert a specific feature or fix without affecting others |
| 🔍 **Code review**      | Easier for reviewers to focus on a single concern                 |
| 📜 **Clean history**    | Makes your Git log readable and meaningful                        |
| ⚙️ **CI/CD Friendly**   | Pinpoint failures in automated pipelines faster                   |

&nbsp;

&nbsp;

# Example of Atomic commits

```bash
git commit -m "Fix: correct typo in login error message"

git commit -m "Refactor: extract signup logic to new function"

git commit -m "Update: footer alignment in mobile view"
```

&nbsp;

&nbsp;

# Some Atomic commit feature

| Commit feature | Description                                                                                                                                |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| **feat**       | a new feature is introduced with the changes                                                                                               |
| **fix**        | a bug fix has occurred                                                                                                                     |
| **chore**      | changes that do not relate to a fix or feature and don't modify src or test files (for example updating dependencies)                      |
| **refactor**   | refactored code that neither fixes a bug nor adds a feature                                                                                |
| **docs**       | updates to documentation such as a the README or other markdown files                                                                      |
| **style**      | changes that do not affect the meaning of the code, likely related to code formatting such as white-space, missing semi-colons, and so on. |
| **test**       | including new or correcting previous tests                                                                                                 |
| **perf**       | performance improvements                                                                                                                   |
| **ci**         | continuous integration related                                                                                                             |
| **build**      | changes that affect the build system or external dependencies                                                                              |
| **revert**     | reverts a previous commit                                                                                                                  |

&nbsp;

&nbsp;
