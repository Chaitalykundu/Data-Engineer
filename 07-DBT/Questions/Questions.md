# Questions

1. Name modern cloud data platforms

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Random Interview questions

6. Difference between view, table, and incremental materialization?
7. What are snapshots?
8. Explain dbt run vs dbt build.
9. How do you debug DBT failures?
10. How does DBT use Snowflake virtual warehouses?
11. How does incremental strategy work in Snowflake?
12. Explain merge vs append.
13. How do you reduce Snowflake credits in DBT?
14. What is cluster_by in DBT?

&nbsp;

# Random Interview Questions Answer

### 8. Explain dbt run vs dbt build.

dbt run → Models only

dbt build → Models + tests + snapshots + seeds

&nbsp;

&nbsp;

### 9. How do you debug DBT failures?

Commands:

```
dbt debug
dbt compile
dbt ls
dbt test
```

Check:

```
target/
logs/
```
