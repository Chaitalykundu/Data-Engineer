# Overview

- [Overview](#overview)
- [Variables](#variables)

&nbsp;

&nbsp;

&nbsp;

# Variables

Variables in Terraform are the input parameters you can define and reuse across your configuration. They make your .tf files dynamic, reusable, and configurable instead of hardcoding values.

&nbsp;

&nbsp;

| **Type**    | **Syntax**       | **Example Variable Definition**                                                                                                                                                                                                                         | **Usage in Code**                               |
| ----------- | ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------- |
| **String**  | `string`         | `hcl\nvariable "instance_type" {\n  type    = string\n  default = "t2.micro"\n}\n`                                                                                                                                                                      | `instance_type = var.instance_type`             |
| **Number**  | `number`         | `hcl\nvariable "instance_count" {\n  type    = number\n  default = 2\n}\n`                                                                                                                                                                              | `count = var.instance_count`                    |
| **Boolean** | `bool`           | `hcl\nvariable "enable_monitoring" {\n  type    = bool\n  default = true\n}\n`                                                                                                                                                                          | `monitoring = var.enable_monitoring`            |
| **List**    | `list(type)`     | `hcl\nvariable "availability_zones" {\n  type    = list(string)\n  default = ["us-east-1a", "us-east-1b"]\n}\n`                                                                                                                                         | `availability_zone = var.availability_zones[0]` |
| **Tuple**   | `tuple([types])` | `hcl\nvariable "server_settings" {\n  type = tuple([string, number, bool])\n  default = ["t2.micro", 20, true]\n}\n`                                                                                                                                    | `var.server_settings[1]`                        |
| **Map**     | `map(type)`      | `hcl\nvariable "tags" {\n  type = map(string)\n  default = {\n    Environment = "dev"\n    Owner       = "team1"\n  }\n}\n`                                                                                                                             | `tags = var.tags`                               |
| **Object**  | `object({})`     | `hcl\nvariable "server_config" {\n  type = object({\n    instance_type = string\n    disk_size     = number\n    monitoring    = bool\n  })\n  default = {\n    instance_type = "t2.small"\n    disk_size     = 20\n    monitoring    = true\n  }\n}\n` | `var.server_config.instance_type`               |
| **Any**     | `any`            | `hcl\nvariable "flexible_input" {\n  type = any\n}\n`                                                                                                                                                                                                   | Accepts string, number, list, map, etc.         |
