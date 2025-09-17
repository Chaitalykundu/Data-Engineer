# Overview

- [Overview](#overview)
- [Primary Data Types](#primary-data-types)
- [Complex Data Types](#complex-data-types)
- [Cheatsheet](#cheatsheet)

&nbsp;

&nbsp;

&nbsp;

# Primary Data Types

| Data Type | Description        | Example    | Typical Usage                      |
| --------- | ------------------ | ---------- | ---------------------------------- |
| `string`  | Text values        | `"hello"`  | Resource names, regions, paths     |
| `number`  | Integers or floats | `3`, `2.5` | Count, sizes, IDs                  |
| `bool`    | True/False logic   | `true`     | Enable/disable flags, conditionals |

&nbsp;

&nbsp;

# Complex Data Types

| Type       | Description                                             | Example                          |
| ---------- | ------------------------------------------------------- | -------------------------------- |
| **list**   | Ordered sequence of values, all of the same type        | `["a", "b", "c"]`                |
| **map**    | Key-value pairs with unique string keys                 | `{ name = "app", env = "dev" }`  |
| **set**    | Unique unordered collection of values (similar to list) | `toSet(["a", "b", "c"])`         |
| **tuple**  | Ordered sequence with values of different types         | `[1, "two", true]`               |
| **object** | Group of named attributes with defined types            | `{ name = string, id = number }` |

&nbsp;

&nbsp;

&nbsp;

# Cheatsheet

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

&nbsp;

&nbsp;

&nbsp;
