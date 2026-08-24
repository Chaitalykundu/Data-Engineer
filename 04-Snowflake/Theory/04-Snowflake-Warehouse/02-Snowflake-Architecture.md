# Snowflake Architecture

```mermaid
flowchart TB
    U["Users and applications<br/>Snowsight • dbt • Python • BI tools"]
    CS["Cloud Services<br/>Authentication • RBAC • Metadata • Query optimization"]
    VW1["ETL_WH<br/>Loading and transformation"]
    VW2["BI_WH<br/>Reports and dashboards"]
    VW3["DEV_WH<br/>Development"]
    ST["Central Storage<br/>Encrypted • Compressed • Micro-partitioned"]

    U --> CS
    CS --> VW1
    CS --> VW2
    CS --> VW3
    VW1 --> ST
    VW2 --> ST
    VW3 --> ST
```

&nbsp;

```
                +----------------------+
                |   Cloud Services     |
                | Metadata, Security   |
                +----------+-----------+
                           |
      ------------------------------------------
      |                                        |
      v                                        v

+-------------------+              +-------------------+
| Virtual Warehouse |              | Virtual Warehouse |
| (Compute)         |              | (Compute)         |
| BI Queries        |              | ELT / DBT Jobs    |
+---------+---------+              +---------+---------+
          \                                 /
           \                               /
            v                             v

      +--------------------------------------+
      |      Centralized Data Storage        |
      | Tables, Files, Historical Data       |
      +--------------------------------------+
```

&nbsp;

&nbsp;
