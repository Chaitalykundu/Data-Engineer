# Content

- [Content](#content)
- [Questions](#questions)

&nbsp;

&nbsp;

&nbsp;

# Questions

1. A pipeline that normally takes 20 minutes now takes two hours. How would you investigate?
2. A dbt model produced duplicate customer records after deployment. What would you check?
3. A Snowflake query is scanning the entire table despite filtering by date. Why?
4. A source added a column and broke the pipeline. How would you recover and prevent recurrence?
5. The source sent the same file twice. How would you avoid duplicate loading?
6. A dbt incremental model missed updates to historical records. How would you fix it?
7. Row counts match between source and target, but totals do not. How would you investigate?
8. A CI deployment partially succeeded. How would you restore consistency?
9. Production works, but Power BI users experience slow dashboards during ETL. What would you change?
10. Warehouse cost doubled without an increase in data volume. What would you investigate?
11. A business user says a certified dataset is incorrect. How would you establish the cause?
12. An upstream table was renamed without notification. What preventive controls would you introduce?
13. A pipeline fails intermittently because of network timeouts. How would you make it resilient?
14. Two pipelines update the same target simultaneously. How would you prevent inconsistent data?
15. Data is technically correct but arrives after the business SLA. How would you address it?
16. A production pipeline failed at 2 AM. What do you do?
17. How do you identify the first failure in a pipeline?
18. How do you distinguish source failure from Snowflake failure?
19. What if Fivetran succeeds but DBT fails?
20. What if DBT succeeds but downstream reporting fails?
21. What if a pipeline suddenly becomes 3x slower?
22. What if Snowflake queries are queued?
23. What if a Snowflake warehouse suddenly consumes 5x credits?
24. What if source schema changes unexpectedly?
25. What if the pipeline partially loaded data?
26. How would you safely rerun a failed pipeline?
27. How do you perform RCA?
28. What preventive actions would you take after an incident?
29. How do you monitor pipeline SLAs?
