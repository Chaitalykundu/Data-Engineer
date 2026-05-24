# Key notes

- `between .. and ..` is equivalent to `>= .. AND salary <= ..`

- `=` will return only specific case string, not other cases as `= is case-sensitive`

- `ILIKE` is case-insensitive. it will return the value with every case. use `ILIKE` instead of `=`

- `!=` is equivalent to `<>` or `IS NOT`. `<>` is the official SQL-standard operator. If you're comparing with `null` then use `IS NOT`

- When we'll sort any table with 2 column, we need to use `,`

- OFFSET 1 → skip first row