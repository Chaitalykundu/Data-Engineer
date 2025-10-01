# Overview

- [Overview](#overview)
- [Resource block](#resource-block)
- [Configuration model](#configuration-model)

&nbsp;

&nbsp;

&nbsp;

# Resource block

The `resource` block defines a piece of infrastructure and specifies the settings for Terraform to create it with. The arguments that an individual resource supports are determined by the provider.

&nbsp;

&nbsp;

# Configuration model

The resource block supports the following arguments:

- `resource "<TYPE>" "<LABEL>"` block
  - `PROVIDER ARGUMENTS` block | refer to your provider documentation
  - `count` number | mutually exclusive with for_each
  - `depends_on` list of references
  - `for_each` map or set of strings | mutually exclusive with count
  - `provider` reference
  - `lifecycle` block
    - `create_before_destroy` boolean
    - `prevent_destroy` boolean
    - `ignore_changes` list of attributes
    - `replace_triggered_by` list of references
    - `precondition` block

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
