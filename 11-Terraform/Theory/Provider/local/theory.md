we have made use of the `local_sensitive_file` resource type to mask the contents of the file from the execution plan.

&nbsp;

# Example

if we don't want the content of the file to show up in the execution plan at all.

```hcl
resource "local_sensitive_file" "games" {
  filename     = "/root/favorite-games"
  content  = "FIFA 21"
  # sensitive_content = "FIFA 21"
}
```

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
