| Statement                     | Description                                       | Example                      |
| ----------------------------- | ------------------------------------------------- | ---------------------------- |
| `BEGIN` / `START TRANSACTION` | Starts a transaction                              | `BEGIN;`                     |
| `COMMIT`                      | Saves the transaction permanently                 | `COMMIT;`                    |
| `ROLLBACK`                    | Undoes changes made in the transaction            | `ROLLBACK;`                  |
| `SAVEPOINT`                   | Sets a point to roll back to within a transaction | `SAVEPOINT sp1;`             |
| `SET TRANSACTION`             | Defines characteristics of the transaction        | `SET TRANSACTION READ ONLY;` |
