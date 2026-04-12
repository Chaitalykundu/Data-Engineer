In Real-World Data Modeling we need at least two tables

### CUSTOMER table

```sql
CREATE TABLE CUSTOMER(
    customer_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address_id INT
);
```

&nbsp;

&nbsp;

### ADDRESS table

```sql
CREATE TABLE ADDRESS(
    address_id INT,
    city VARCHAR(50),
    country VARCHAR(50)
);
```

&nbsp;

&nbsp;

;

#### 👉 Relationship:

```md
CUSTOMER.address_id → ADDRESS.address_id
```

This is called:

- 👉 Normalization (avoiding duplicate data)

&nbsp;

&nbsp;

&nbsp;

# Example Data

## CUSTOMER table

| customer_id | first_name | last_name | address_id |
| ----------- | ---------- | --------- | ---------- |
| 1           | John       | Doe       | 101        |
| 2           | Alice      | Smith     | 102        |

&nbsp;

## ADDRESS table

| address_id | city   | country |
| ---------- | ------ | ------- |
| 101        | Delhi  | India   |
| 102        | Mumbai | India   |

&nbsp;

&nbsp;

# Using JOIN with This Table

```sql
SELECT c.first_name, c.last_name, a.city
FROM CUSTOMER c
JOIN ADDRESS a
ON c.address_id = a.address_id;
```

&nbsp;

### Output

| first_name | last_name | city   |
| ---------- | --------- | ------ |
| John       | Doe       | Delhi  |
| Alice      | Smith     | Mumbai |

&nbsp;

&nbsp;

# ⚠️ Missing Things (Important for Interviews)

Your table definition is basic, but in real projects you should add:

✅ Primary Key

```
customer_id INT PRIMARY KEY
```

&nbsp;
✅ Foreign Key

```
FOREIGN KEY (address_id) REFERENCES ADDRESS(address_id)
```

&nbsp;

&nbsp;

&nbsp;
