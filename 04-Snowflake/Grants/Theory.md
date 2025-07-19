In Snowflake, if a role wants to access objects like tables or views inside a schema, it must have:

- USAGE privilege on the database
- USAGE privilege on the schema

Without these, even if role has SELECT access on a table, the user with this role can’t reach the table because it doesn't have permission to “enter” the database and schema.

&nbsp;

## Example

To access `mydb.myschema.customers`:

The role must have:

```sql
GRANT USAGE ON DATABASE mydb TO ROLE myrole;
GRANT USAGE ON SCHEMA mydb.myschema TO ROLE myrole;
GRANT SELECT ON TABLE mydb.myschema.customers TO ROLE myrole;
```

&nbsp;

Think of it like a room inside a building:

- Database = Building
- Schema = Room
- Table = Locker inside the room

You need keys for building + room + locker to open the locker

&nbsp;

&nbsp;
