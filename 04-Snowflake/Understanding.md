1. We ingest data in snowflake from various sources. and dbt transforms (like clean data, join data, filter, create new column etc) that ingsted data

Hum Snowflake mein data ingest karte hain, matlab alag-alag sources se data ko Snowflake database mein le aate hain.

Uske baad dbt (Data Build Tool) usi ingested data ko transform karta hai — jaise ki data ko clean karna, join karna, filter karna ya naye columns create karna — taaki wo analysis ya reporting ke liye ready ho jaye

2. To grant a SELECT privilege on a table, we also need to grant USAGE on the schema and database in which that table is located. Else The user won't be able to see the database

3. Grant a privilege to a role and then grant the role to a user. Example:

   - GRANT USAGE ON DATABASE DEMO TO ROLE ANALYST (https://docs.snowflake.com/en/sql-reference/sql/grant-privilege)
   - GRANT ROLE ANALYST TO USER daniel

a role must have usage rights on both the schema and the database to access the objects effectively.
