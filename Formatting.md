# Markdown formatting

```npm install -g markdownlint-cli

```

```
markdownlint "**/*.md"
```

&nbsp;

## Auto fix

```
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

```
npx prettier --check "**/*.md"
```

```
npx prettier --write "**/*.md"
```
