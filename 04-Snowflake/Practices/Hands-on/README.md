# Micro-partition hands-on questions

1. Check the table details using:

   ```sql
   SHOW TABLES LIKE 'SALES_MP_LAB';
   ```

   What does the BYTES value indicate?

2. Run this query and check its Query Profile:

   ```sql
   SELECT COUNT(*)
   FROM sales_mp_lab
   WHERE order_date BETWEEN    '2024-01-01' AND '2024-01-31';
   ```

   Record:
   - Partitions total
   - Partitions scanned
   - Partitions pruned
   - Bytes scanned

3. the same query for the entire two-year range:

   ```sql
   SELECT COUNT(*)
   FROM sales_mp_lab
   WHERE order_date BETWEEN    '2024-01-01' AND '2025-12-31';
   ```

   Compare its partitions scanned and bytes scanned with Question 2. Why is pruning lower?

4. Run a query that selects only two columns:

   ```sql
   SELECT order_id, region
   FROM sales_mp_lab
   WHERE order_date BETWEEN    '2024-06-01' AND '2024-06-30';
   ```

   Then run:

   ```sql
   SELECT \*
   FROM sales_mp_lab
   WHERE order_date BETWEEN    '2024-06-01' AND '2024-06-30';
   ```

   Compare bytes scanned. How does columnar storage affect the result?

5. Run this query:

   ```sql
   SELECT COUNT(\*)
   FROM sales_mp_lab
   WHERE YEAR(order_date) = 2024;
   ```

   Compare it with:

   ```sql

   SELECT COUNT(\*)
   FROM sales_mp_lab
   WHERE order_date >= '2024-01-01'
   AND order_date < '2025-01-01';
   ```

   Which query prunes more effectively, and why?

Check clustering information for ORDER_DATE:
SELECT SYSTEM$CLUSTERING_INFORMATION(
'SALES_MP_LAB',
'(ORDER_DATE)'
);

Identify:

total_partition_count
average_overlaps
average_depth
Insert rows with random dates again:
INSERT INTO sales_mp_lab
SELECT
SEQ4() + 10000000,
DATEADD('day', UNIFORM(0, 729, RANDOM()), '2024-01-01'),
UNIFORM(1, 100000, RANDOM()),
ARRAY_CONSTRUCT('India', 'US', 'UK', 'Germany', 'Singapore')
[UNIFORM(0, 4, RANDOM())]::VARCHAR,
UNIFORM(100, 10000, RANDOM())
FROM TABLE(GENERATOR(ROWCOUNT => 1000000));

Run the clustering-information query again. Did overlap/depth increase? Explain why.

Clustering hands-on questions
Add a clustering key:
ALTER TABLE sales_mp_lab
CLUSTER BY (order_date);
Verify the clustering key:
SHOW TABLES LIKE 'SALES_MP_LAB';

Which output column shows the clustering key?

Run this after clustering has had time to maintain the table:
SELECT COUNT(\*)
FROM sales_mp_lab
WHERE order_date BETWEEN '2024-06-01' AND '2024-06-30';

Compare its Query Profile with your result from Question 2. Did partitions scanned reduce?

Check clustering information again:
SELECT SYSTEM$CLUSTERING_INFORMATION(
'SALES_MP_LAB',
'(ORDER_DATE)'
);

Did average_overlaps and average_depth improve?

Test a low-cardinality clustering key:
ALTER TABLE sales_mp_lab
CLUSTER BY (region);

Would region be a good clustering key when it has only five possible values? Explain why or why not.

Create a compound key:
ALTER TABLE sales_mp_lab
CLUSTER BY (order_date, customer_id);

13. Test these two queries and compare their Query Profiles:

    ```sql
    SELECT *
    FROM sales_mp_lab
    WHERE order_date = '2024-06-15';
    ```

    ```sql
    SELECT *
    FROM sales_mp_lab
    WHERE customer_id = 5000
    AND order_date = '2024-06-15';
    ```

    Which query benefits more from the compound clustering key?

14. Remove the clustering key:

    ```sql
    ALTER TABLE sales_mp_lab
    DROP CLUSTERING KEY;
    ```

    What happens to existing micro-partitions? Does Snowflake immediately reorganize the data again?
