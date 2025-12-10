# Overview

- [Overview](#overview)
- [Variables](#variables)
- [Types of Variables](#types-of-variables)

&nbsp;

&nbsp;

&nbsp;

# Variables

Variables in Terraform are the input parameters you can define and reuse across your configuration. They make your `.tf` files dynamic, reusable, and configurable instead of hardcoding values.

&nbsp;

&nbsp;

# Types of Variables

| **Type**    | **Syntax**       | **Example Variable Definition**                                                                                                                                                                                                              | **Usage in Code**                               |
| ----------- | ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------- |
| **String**  | `string`         | variable "instance_type" {<br> type = string<br> default = "t2.micro"<br>}                                                                                                                                                                   | `instance_type = var.instance_type`             |
| **Number**  | `number`         | variable "instance_count" {<br> type = number<br> default = 2<br>}                                                                                                                                                                           | `count = var.instance_count`                    |
| **Boolean** | `bool`           | variable "enable_monitoring" {<br> type = bool<br> default = true<br>}                                                                                                                                                                       | `monitoring = var.enable_monitoring`            |
| **List**    | `list(type)`     | variable "availability_zones" {<br> type = list(string)<br> default = ["us-east-1a", "us-east-1b"]<br>}                                                                                                                                      | `availability_zone = var.availability_zones[0]` |
| **Tuple**   | `tuple([types])` | variable "server_settings" {<br> type = tuple([string, number, bool])<br> default = ["t2.micro", 20, true]<br>}                                                                                                                              | `var.server_settings[1]`                        |
| **Map**     | `map(type)`      | variable "tags" {<br> type = map(string)<br> default = {<br>   Environment = "dev"<br>   Owner = "team1"<br> }<br>}                                                                                                                          | `tags = var.tags`                               |
| **Object**  | `object({})`     | variable "server_config" {<br> type = object({<br>   instance_type = string<br>   disk_size = number<br>   monitoring = bool<br> })<br> default = {<br>   instance_type = "t2.small"<br>   disk_size = 20<br>   monitoring = true<br> }<br>} | `var.server_config.instance_type`               |
| **Any**     | `any`            | variable "flexible_input" {<br> type = any<br>}                                                                                                                                                                                              | Accepts string, number, list, map, etc.         |
