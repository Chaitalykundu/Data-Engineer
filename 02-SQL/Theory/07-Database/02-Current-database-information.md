# Overview

- [Overview](#overview)
- [Current database name](#current-database-name)
- [Current user](#current-user)
- [Server version](#server-version)
- [Connection info](#connection-info)

&nbsp;

&nbsp;

&nbsp;

# Current database name

```sql
SELECT current_database();
```

<img src="../assets/Database/current-database.png">

&nbsp;

&nbsp;

# Current user

```sql
SELECT current_user;
```

<img src="../assets/Database/current-user.png">

&nbsp;

&nbsp;

# Server version

```sql
SHOW server_version;
```

<img src="../assets/Database/server-version.png">

&nbsp;

&nbsp;

# Connection info

```sql
SELECT inet_server_addr(), inet_server_port();
```

<img src="../assets/Database/connection-info.png">
