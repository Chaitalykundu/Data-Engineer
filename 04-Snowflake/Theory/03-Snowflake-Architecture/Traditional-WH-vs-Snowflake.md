# Traditional-WH-VS-Snowflake

| Feature                    | Traditional WH          | Snowflake                                                                    |
| -------------------------- | ----------------------- | ---------------------------------------------------------------------------- |
| Infrastructure cost        | yes                     | No Infrastructure cost                                                       |
| Handle semi structure data | Need ETL tools          | Snowflake can process                                                        |
| Data loading and unloading | Need ETL tools          | Can be done by using "COPY"                                                  |
| Scalability                | Not an easy task        | Highly Scalable (support Scale-up and Scale-out)                             |
| Database Administration    | Highly Required         | In-built performance optimization with its micro partitions and cluster keys |
| Data Backup                | Need additional storage | Easy and no cost with "Cloning"                                              |
| Data Recovery              | Difficult               | Very easy with "Time Travel"                                                 |
| Data Sharing               | Difficult               | Easy with Data Sharing feature                                               |
| Change Data Capture        | Need ETL tools          | Can be done by using "Streams"                                               |
| Scheduling                 | Tools required          | Can schedule by using "Tasks"                                                |
|                            |                         |                                                                              |
