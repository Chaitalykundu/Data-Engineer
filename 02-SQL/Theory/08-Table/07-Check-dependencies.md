# Overview

- [Overview](#overview)

&nbsp;

&nbsp;

&nbsp;

```sql
SELECT
  objid::regclass AS dependent_object,
  refobjid::regclass AS referenced_object,
  deptype
FROM pg_depend
WHERE refobjid = 'your_table_name'::regclass;
```
