# Error 1

```md
Run `terraform init`

Output :

Terraform encountered problems during initialization, including problems with the configuration, described below.

The Terraform configuration must be valid before initialization so that
Terraform can determine which modules and providers need to be installed.

Error: Extraneous label for output

Only 1 labels (name) are expected for output blocks.
```

## Solution

Check the configuration `blocks`
