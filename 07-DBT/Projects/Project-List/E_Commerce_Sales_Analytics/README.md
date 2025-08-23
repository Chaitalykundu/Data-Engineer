# Real-World Tip

💡Think in layers:

- raw = source tables (external data)
- staging = clean/rename (1:1 with raw)
- intermediate = joins/logic
- marts = final output used in dashboards (fact/dim)

&nbsp;

&nbsp;

# dbt Data Flow (Layered Architecture)

```pgsql
     ┌─────────────┐
     │   Sources   │ ← from external systems (e.g., Snowflake tables, CSVs, APIs)
     └─────┬───────┘
           ↓
     ┌─────────────┐
     │   Staging   │ ← Cleaned, renamed, typed (1:1 with source tables)
     └─────┬───────┘
           ↓
     ┌────────────────┐
     │ Intermediate   │ ← Joins, filters, calculated fields
     └─────┬──────────┘
           ↓
     ┌──────────────┐
     │     Marts    │ ← Final fact/dim models for BI tools
     └─────┬────────┘
           ↓
     ┌──────────────┐
     │ BI/Analytics │ ← Looker, PowerBI, Tableau, etc.
     └──────────────┘
```

&nbsp;

&nbsp;

# Steps & Features to Implement

| Step                                    | Goal                                      | dbt Concepts Covered                 | Status |
| --------------------------------------- | ----------------------------------------- | ------------------------------------ | ------ |
| ✅ 1. **Set up dbt project**            | Create `retail_analytics_dbt`             | `dbt init`, `profiles.yml`           | Done   |
| ✅ 2. **Create sources**                | Define raw tables using `source()`        | `sources.yml`                        |
| ✅ 3. **Build staging models**          | Clean data: `stg_orders`, `stg_customers` | folder structure, naming conventions |
| ✅ 4. **Create intermediate models**    | Join & enrich data                        | use `ref()`                          |
| ✅ 5. **Build final marts**             | Create `fct_orders`, `dim_customers`      | star schema                          |
| ✅ 6. **Add schema tests**              | `not_null`, `unique` for IDs              | `schema.yml`, `dbt test`             |
| ✅ 7. **Generate docs**                 | Run `dbt docs generate` & view lineage    | docs, model descriptions             |
| ✅ 8. **Add seeds** (optional)          | Static mapping like country codes         | `dbt seed`                           |
| ✅ 9. **Snapshots** (optional)          | Track changes in customer info            | SCD Type 2                           |
| ✅ 10. **Incremental model** (optional) | For order table with new daily rows       | `is_incremental()` logic             |

&nbsp;
