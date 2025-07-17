# Overview

- [Overview](#overview)
- [string](#string)
  - [Example](#example)
  - [Tips:](#tips)
- [number](#number)
  - [Example](#example-1)
  - [Tips:](#tips-1)
- [bool](#bool)
  - [Example](#example-2)
  - [Tips:](#tips-2)

&nbsp;

&nbsp;

&nbsp;

# string

A `string` is a sequence of characters enclosed in double quotes `(" ")`.

Strings are used for things like names, file paths, regions, and any text-based input.

&nbsp;

## Example

```hcl
variable "app_name" {
  type    = string
  default = "myapp"
}
```

&nbsp;

## Tips:

- Use `string` for any textual input/output.
- You can interpolate using `"Hello, ${var.name}!"`.

&nbsp;

&nbsp;

# number

The `number` type represents both integers and floating-point numbers.

&nbsp;

## Example

```hcl
variable "retry_count" {
  type    = number
  default = 3
}
```

&nbsp;

## Tips:

- Use `number` in logic (`count`, `timeouts`, `replicas`, etc.).

- Terraform will automatically cast `"5"` (string) to `5` (number) in some contexts, but explicit typing is better.

&nbsp;

&nbsp;

# bool

A `bool` (boolean) represents true or false values.

&nbsp;

## Example

```hcl
variable "enabled" {
  type    = bool
  default = true
}
```

&nbsp;

## Tips:

- Ideal for conditionals and toggles (e.g., enable/disable resource).
- Use in expressions: `var.enabled ? "yes" : "no"`

&nbsp;
