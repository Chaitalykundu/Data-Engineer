# Overview

- [Overview](#overview)
- [snowflake_unsafe_execute](#snowflake_unsafe_execute)
- [What it does](#what-it-does)

&nbsp;

&nbsp;

&nbsp;

# snowflake_unsafe_execute

`snowflake_unsafe_execute` is a Terraform resource/function-like mechanism in the Snowflake Terraform provider that allows you to execute arbitrary SQL statements directly from Terraform.

&nbsp;

&nbsp;

# What it does

It lets you run SQL that isn't supported by regular Snowflake Terraform resources.
Example cases:

Running ALTER statements not exposed in provider

Executing complex SQL scripts

Running Snowflake admin commands

Creating objects Terraform doesn't yet support

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

&nbsp;

&nbsp;

&nbsp;
