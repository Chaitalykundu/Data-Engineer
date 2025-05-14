# Scenarios

1. I have a lot of data in my cloud storage. Can I load them to snowflake?

   ```md
   - Map them as an external table or use stage object or SnowPipe object and load the data to your snowflake environment.

   - You pay only for storage usage

   - Use small compute for small data and large compute for large dataset
   ```

&nbsp;

2. I have to perform a small ETL workload

   ```md
   Run your query using a x-small warehouse.
   ```

&nbsp;

3. I have another ETL job. But it's taking too long to run

   ```md
   Create a new virtual warehouse and run your ETL job in a small ( 2 node) cluster
   ```

&nbsp;

4. 2 node cluster is not sufficient for my workload

   ```md
   Alter the virtual warehouse and make it a 4 node cluster and see the performance
   ```

&nbsp;

5. I have many BI (Power BI or Tableau) users who want to access the warehouse tables and generate the reports. What virtual warehouse should I use.

   ```md
   Create an elastic cluster (multi warehouse cluster) and it automatically scales up and down as the number of BI users increases to cater to the concurrency and still give the same fast result.
   ```

&nbsp;

6. I have a data science team and they have a compute-heavy workload.

   ```md
   Allocate 8 node cluster and allow then to run their machine learning job.
   ```

&nbsp;

&nbsp;

&nbsp;

&nbsp;
