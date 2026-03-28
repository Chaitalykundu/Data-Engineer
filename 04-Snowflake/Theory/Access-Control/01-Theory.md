# Overview

- [Overview](#overview)
- [Access control](#access-control)
- [Snowflake Access Control Model](#snowflake-access-control-model)
- [How RBAC Works (Flow)](#how-rbac-works-flow)

&nbsp;

&nbsp;

&nbsp;

# Access control

Access control in Snowflake is a core security feature that ensures only authorized users can access specific data and perform allowed actions.

&nbsp;

Access control = managing who can do what on which object

It answers 3 key questions:

- 👤 Who → User / Role
- 🎯 What → Action (SELECT, INSERT, USAGE, etc.)
- 📦 On What → Object (database, schema, table, etc.)

&nbsp;

It determines who can access database objects and perform operations on specific objects in snowflake.

&nbsp;

&nbsp;

# Snowflake Access Control Model

Snowflake supports and combines below access control models.

<u>**DAC**</u> = **Discretionary Access Control**. Each object has an owner, who can in turn grant access to the object.

<u>**RBAC**</u> = **Role Based Access Control**. Access privileges are assigned to roles, which are in turn assigned to users.

<u>**ABAC**</u> = **Advanced Based Access Control**. Advanced/ Tag-based on attributes (tags, policies)

&nbsp;

&nbsp;

# How RBAC Works (Flow)

```md
User → Role → Privileges → Object
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
