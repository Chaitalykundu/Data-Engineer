# Content

- [Content](#content)
- [Questions](#questions)

&nbsp;

&nbsp;

&nbsp;

[Accenture Custom Software Engineer](https://www.accenture.com/in-en/careers/jobdetails?id=ATCI-5520199-S2014779_en&title=Custom+Software+Engineer&c=car_glb_curateddailycondialogbox_12220771&n=otc_0621)

# Questions

1. Explain Snowflake’s three-layer architecture.
2. Why Snowflake over traditional databases?
3. How does Snowflake separate storage and compute?
4. What are virtual warehouses?
5. What is micro-partitioning? What is stored inside a Snowflake micro-partition?
6. How does Snowflake decide which micro-partitions to scan?
7. What metadata is stored for micro-partitions?
8. What is partition pruning?
9. Why does Snowflake not require traditional indexes?
10. What is clustering depth?
11. How do you identify a poorly clustered table?
12. What is automatic clustering? When should Automatic Clustering be enabled?
13. When would you use a clustering key?
14. When should you not use clustering?
15. How would you optimize a query scanning too many partitions?
16. What information would you inspect in Query Profile?
17. What is the difference between local-disk cache, result cache, and metadata cache?
18. Why might a query not use the result cache?
19. How do warehouse size and cluster count affect performance?
20. What is the difference between scaling up and scaling out?
21. How do you select an appropriate warehouse size?
22. How do auto-suspend and auto-resume affect cost and performance?
23. How do you monitor Snowflake warehouse credit consumption?
24. How would you implement cost allocation or chargeback?
25. Explain permanent, transient, and temporary tables.
26. Explain Time Travel and Fail-safe.
27. What are zero-copy clones, and how can they support testing?
28. Explain Streams and Tasks with a practical use case.
29. What is the difference between standard and append-only streams?
30. What happens when a stream becomes stale?
31. Compare Snowpipe, Snowpipe Streaming, and batch COPY INTO.
32. How do you handle partially failed file loads?
33. How do you prevent the same file from being loaded twice?
34. Compare views, materialized views, and dynamic tables.
35. How do you troubleshoot a dynamic table that misses its target lag?
36. Explain Snowflake RBAC and role inheritance.
37. What is the difference between an access role and a functional role?
38. What is a managed access schema?
39. How do future grants behave?
40. How would you secure PII using masking and row-access policies?
41. How does Snowflake handle concurrency?
42. What happens when a warehouse is suspended?
43. What is the difference between warehouse scaling and multi-cluster scaling?
44. How do you handle a query that suddenly became slow?
45. How do you reduce Snowflake compute cost?
46. How do you optimize warehouse usage?
47. How do you identify whether a query is CPU-bound, I/O-bound, or waiting for resources?
48. What causes spilling in Snowflake?

&nbsp;

&nbsp;

## Snowflake Administration / Security

1. Explain Snowflake RBAC.
2. Explain role hierarchy.
3. How would you design RBAC for 1,000+ users?
4. What is least privilege?
5. What are future grants?
6. Difference between USAGE, SELECT, INSERT, UPDATE, and OWNERSHIP.
7. Why shouldn't you grant privileges directly to users?
8. How would you automate user onboarding?
9. How would you manage Snowflake roles through Terraform?
10. How would you prevent unauthorized access to sensitive data?
