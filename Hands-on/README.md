# Build a Secure Data Sharing Platform

## Environment

Provider Account

```
SALES_DB
```

Tables:

```
customers
orders
products
```

&nbsp;

## Requirements

1. Create a Secure View that exposes only:

   ```
   customer_id
   customer_name
   region
   ```

2. Apply a Masking Policy to hide email 2. addresses for non-privileged roles.
3. Create a SHARE and grant access to the Secure View.
4. Provision the following with Terraform:
   - Database
   - Warehouse
   - Roles
   - Share
   - Grants
5. Build a CI/CD pipeline that:
   - Runs terraform fmt
   - Runs terraform validate
   - Runs terraform plan
   - Requires approval before production deployment
6. Compare the original and optimized SQL query by recording:
   - Execution time
   - Bytes scanned
   - Partitions scanned vs. pruned
   - Warehouse credits consumed
