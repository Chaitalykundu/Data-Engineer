# Markdown formatting

```npm
install -g markdownlint-cli
```

```bash
markdownlint "**/*.md"
```

&nbsp;

## Auto fix

```bash
markdownlint --fix "**/*.md"
```

&nbsp;

&nbsp;

## Customize Rules

Create a .markdownlint.json file in your project root to configure rules:

```json
{
  "default": true,
  "MD013": false, // Disable line length rule
  "MD041": false // Disable "first line heading" rule
}
```

&nbsp;

&nbsp;

&nbsp;

# Prettier formatting

```bash
npx prettier --check "**/*.md"
```

```bash
npx prettier --write "**/*.md"
```
