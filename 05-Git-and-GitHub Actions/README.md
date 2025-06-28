# Learning material

# PHASE 1: Git Basics — Foundation

| Step | Topic                       | Commands / Concepts                         | Goal                           | Status |
| ---- | --------------------------- | ------------------------------------------- | ------------------------------ | ------ |
| 1️⃣   | What is Git & VCS           | Version Control, Snapshots, Local vs Remote | Understand why Git is used     | Done   |
| 2️⃣   | Install Git + VS Code setup | `git --version`                             | Setup Git and link with editor | Done   |
| 3️⃣   | Initialize repo             | `git init`                                  | Start tracking your project    | Done   |
| 4️⃣   | Git workflow                | Working Directory → Staging → Repository    | Understand Git's 3-stage model | Done   |
| 5️⃣   | Add files                   | `git add .` / `git add <file>`              | Move changes to staging area   | Done   |
| 6️⃣   | Commit changes              | `git commit -m "message"`                   | Save a snapshot                | Done   |
| 7️⃣   | Status check                | `git status` / `git status -s`              | See current state              | Done   |
| 8️⃣   | View history                | `git log`, `git log --oneline`              | Track previous commits         | Done   |

&nbsp;

&nbsp;

# PHASE 2: Intermediate Git — Working Smart

| Step | Topic           | Commands / Concepts                           | Goal                               | Status |
| ---- | --------------- | --------------------------------------------- | ---------------------------------- | ------ |
| 9️⃣   | Ignore files    | `.gitignore`                                  | Prevent tracking unwanted files    | Done   |
| 🔟   | Branching       | `git branch`, `git switch`, `git checkout`    | Work on features separately        |
| 1️⃣1️⃣ | Merging         | `git merge`                                   | Combine feature branches into main |
| 1️⃣2️⃣ | Merge conflicts | Manual resolve + `git status`                 | Handle file conflicts              |
| 1️⃣3️⃣ | Staging options | `git add -p`, `git diff`, `git diff --staged` | Selectively stage parts            |
| 1️⃣4️⃣ | Atomic commits  | One purpose per commit                        | Improve commit quality             | Done   |

&nbsp;

# PHASE 3: Remote Git & GitHub — Collaboration

| Step | Topic                 | Commands / Concepts             | Goal                         | Status |
| ---- | --------------------- | ------------------------------- | ---------------------------- | ------ |
| 1️⃣5️⃣ | Connect to GitHub     | `git remote add origin`         | Link local to remote         |
| 1️⃣6️⃣ | Push changes          | `git push -u origin main`       | Upload commits to GitHub     |
| 1️⃣7️⃣ | Clone a repo          | `git clone <URL>`               | Get repo copy from GitHub    | Done   |
| 1️⃣8️⃣ | Pull changes          | `git pull`                      | Sync with latest version     |
| 1️⃣9️⃣ | Forking and PR        | GitHub interface                | Contribute to other projects |
| 2️⃣0️⃣ | GitHub CLI (Optional) | `gh repo clone`, `gh pr create` | Advanced GitHub usage        |

&nbsp;

# PHASE 4: Rewriting History — Advanced Control

| Step | Topic        | Commands / Concepts                      | Goal                            |
| ---- | ------------ | ---------------------------------------- | ------------------------------- |
| 2️⃣1️⃣ | Undo changes | `git restore`, `git reset`, `git revert` | Fix mistakes at any stage       |
| 2️⃣2️⃣ | Rebase       | `git rebase`, `git rebase -i`            | Clean up messy commit history   |
| 2️⃣3️⃣ | Cherry-pick  | `git cherry-pick <commit>`               | Copy a commit to another branch |
| 2️⃣4️⃣ | Stash        | `git stash`, `git stash pop`             | Temporarily save dirty work     |

&nbsp;

# PHASE 5: Bonus Concepts — Clean & Professional Workflow

| Step | Topic            | Purpose                                              |
| ---- | ---------------- | ---------------------------------------------------- |
| 2️⃣5️⃣ | Semantic commits | Use prefixes like `feat:`, `fix:`, `refactor:`       |
| 2️⃣6️⃣ | Tags & Releases  | `git tag`, GitHub releases                           |
| 2️⃣7️⃣ | Commit signing   | `git config commit.gpgsign true`                     |
| 2️⃣8️⃣ | Hooks (Optional) | Pre-commit checks using Husky, linting               |
| 2️⃣9️⃣ | Git aliases      | Shortcuts like `git st` for `git status`             |
| 3️⃣0️⃣ | Git in teams     | Branch naming conventions, Git Flow, trunk-based dev |

&nbsp;

&nbsp;

&nbsp;

1. <https://www.linkedin.com/posts/amit-kumar-mehta-7904092b8_git-and-github-ugcPost-7193200716524457985-b4CO?utm_source=share&utm_medium=member_desktop>

2. [12 days of Git](https://www.linkedin.com/posts/vishwanathchiniwar_understand-git-in-12-days-activity-7041772340241719297-qFw5?utm_source=share&utm_medium=member_desktop)

&nbsp;

&nbsp;

&nbsp;

# Day-wise GitHub Actions Roadmap (15 Days)

| **Day** | **Topic**                      | **What You'll Learn**                                                  | **Hands-on Task**                                                                               |
| ------- | ------------------------------ | ---------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| 1       | Introduction to GitHub Actions | What is CI/CD?                                                         | Create a basic workflow file (`hello.yml`)                                                      |
|         |                                | What is GitHub Actions?                                                |
|         |                                | Core concepts: Workflow, Jobs, Steps, Actions, Runners                 |
|         |                                | Explore `.github/workflows` folder                                     |
| 2       | Events & Triggers              | Understand on: `push`, `pull_request`, `schedule`, `workflow_dispatch` | Trigger workflows manually and on push                                                          |
| 3       | Workflow Syntax                | Learn `run`, `uses`, `env`, `secrets`                                  | Create a workflow with multiple steps and environment variables (e.g., install deps, run tests) |
|         |                                | Job dependencies with `needs:`                                         |
| 4       | GitHub Marketplace Actions     | Search and understand actions in the GitHub Marketplace                | Setup a Node.js or Python CI with marketplace Actions                                           |
|         |                                | Popular actions: actions/checkout, setup-node, setup-python            |
|         |                                | Pass inputs to actions                                                 |
| 5       | Caching & Artifacts            | Use `actions/cache` to cache dependencies                              | Cache dependencies and upload test results                                                      |
|         |                                | Upload/download build/test artifacts                                   |
| 6       | Matrix Builds                  | Run jobs in parallel on multiple OS/language versions                  | Build a matrix to test on Ubuntu, macOS, and Windows                                            |
| 7       | Review + Mini Project          | Revise Days 1–6                                                        | Build a full CI pipeline for a project                                                          |
| 8       | Secrets & Security             | Managing secrets in GitHub (Store/use secrets)                         | Use API keys or tokens securely in a workflow                                                   |
|         |                                | Masking values and safe logging                                        |                                                                                                 |
| 9       | Custom JavaScript Actions      | Write your own GitHub Action in JavaScript                             | Create a greet-user action using input parameters                                               |
|         |                                | Understand action.yml, inputs/outputs                                  |                                                                                                 |
| 10      | What are composite actions     | Create reusable logic with composite actions                           | Build a composite action with 2–3 steps                                                         |
|         |                                | What are composite actions?                                            |
|         |                                | Organize repeated logic into reusable composite workflows              |
| 11      | Docker-based Actions           | Learn Docker-based custom actions                                      | Build an action using a Docker container                                                        |
|         |                                | Building your first Docker container-based GitHub Action               |
| 12      | Scheduled Workflows            | Use cron expressions in `schedule:`                                    | Setup a job to run daily (e.g., cleanup or ping)                                                |
|         |                                | Automate tasks (e.g., weekly cleanups, reports)                        |                                                                                                 |
| 13      | Reusable Workflows             | DRY principles using called workflows across repos                     | Create and reuse a test workflow in multiple projects                                           |
| 14      | Deployment Integration         | Deploy to: GitHub Pages, Netlify, Vercel, or AWS                       | Auto-deploy a site or app post build                                                            |
| 15      | Best Practices + Final Project | Security, efficiency, modular workflows                                | Build a real-world CI/CD pipeline with lint, test, matrix build, and deploy                     |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

✅ Day 4: Create Your Own Action
Understand types:

JavaScript action

Docker action

Composite action

Learn structure: action.yml, metadata, inputs, outputs

🛠️ Hands-on: Create a simple JS action (e.g., greet user with input name)

✅ Day 5: Advanced Workflow Features
if:, needs:, continue-on-error:

Matrix builds

Caching with actions/cache

Artifacts

🛠️ Hands-on: Add a matrix job to run tests on multiple Node versions

✅ Day 6: Deployment & Secrets
Add and use secrets

Auto-deploy to:

GitHub Pages

Firebase, Netlify, Vercel (via action)

🛠️ Hands-on: Setup CI/CD to deploy static site to GitHub Pages or Netlify

✅ Day 7: Reusability & Best Practices
Reusable workflows

Workflow templates

Organizing multiple workflows in monorepos

Security practices:

Token scopes

Approved actions

🛠️ Hands-on: Create a reusable CI workflow & import it in another repo

🏁 Bonus: After Day 7
Try:

Docker builds with GitHub Actions

Release automation (e.g., GitHub Release + changelog generator)

Integration with Terraform, AWS, etc

&nbsp;

&nbsp;

&nbsp;

GitHub Actions Roadmap

🧱 2. Creating Your First Workflow
🚀 Hello World workflow on push

🔧 Setting up a job with:

Checkout code: actions/checkout@v3

Setup languages (Node.js, Python, Java): actions/setup-node, setup-python, etc.

📝 Running scripts (build, test)

🛠️ 3. Using & Creating Actions
📦 Use marketplace actions

🧑‍🍳 Create custom JavaScript or Docker actions

📁 Organize and reuse actions across repositories

🔄 Composite actions

🔐 4. Secrets and Environment Variables
🔐 Store secrets in GitHub Settings

🌐 Use env: and secrets: in workflows

🔄 Mask secrets in logs

⚙️ 5. Advanced Workflow Features
➕ Matrix builds (parallel testing)

♻️ Caching dependencies (actions/cache)

⛓️ Job/step dependencies

💣 Error handling & continue-on-error

🕵️ Conditional steps (if:)

🧪 6. Testing & CI/CD Pipelines
✅ Linting, testing, and building

🚀 Auto deploy to:

GitHub Pages

AWS/GCP/Azure

Docker Hub/Kubernetes

📊 7. Monitoring & Optimization
📈 Enable job logs and artifacts

🧼 Clean up unused workflows

⏱️ Reduce build time with caching & job splitting

♻️ 8. Reusable Workflows & Templates
🔁 Call reusable workflows across repositories

🧰 Use workflow templates for consistency

🧩 9. Security & Compliance
🚨 Least privilege for tokens

✅ Review third-party actions

🔍 Audit logs for workflow runs

📚 Resources to Learn
📘 Official Docs

🎓 GitHub Actions in GitHub Learning Lab

📺 YouTube channels (like GitHub, The Net Ninja)

🧑‍💻 Practice by automating your own repo
