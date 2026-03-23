# Overview

- [Overview](#overview)
- [Modify / Replace Masking Policy](#modify--replace-masking-policy)
- [Remove Masking Policy](#remove-masking-policy)
- [Drop Masking Policy](#drop-masking-policy)
  - [Limitation](#limitation)
  - [Required Privileges](#required-privileges)

&nbsp;

&nbsp;

&nbsp;

# Modify / Replace Masking Policy

```sql
ALTER TABLE table_name
ALTER COLUMN column_name
SET MASKING POLICY policy_name;
```

&nbsp;

&nbsp;

# Remove Masking Policy

```sql
ALTER TABLE table_name
ALTER COLUMN column_name
UNSET MASKING POLICY;
```

&nbsp;

&nbsp;

# Drop Masking Policy

```sql
DROP MASKING POLICY policy_name;
```

&nbsp;

&nbsp;


## Limitation

1. Before dropping any masking policies, we need to unset them
2. Datatypes of input and output values should be same

&nbsp;

&nbsp;

## Required Privileges

To drop a masking policy, you need:

- Ownership of the policy
OR
- Appropriate privileges (like OWNERSHIP)

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

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
