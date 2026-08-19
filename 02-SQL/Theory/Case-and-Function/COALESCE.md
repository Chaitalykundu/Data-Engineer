
# COALESCE

`COALESCE` in SQL is a function that returns the **first non-NULL value** from a list of expressions.

&nbsp;

&nbsp;

# Syntax

```sql
COALESCE(expression1, expression2, ..., expressionN)
```

- It evaluates expressions from left to right.
- Returns the first value that is not NULL.
- If all expressions are NULL, it returns NULL.


&nbsp;

&nbsp;

# Examples

## 1. Replace NULL with a default value

```sql
SELECT COALESCE(phone_number, 'No Phone') AS contact
FROM customers;
```

If `phone_number` is **NULL**, it returns 'No Phone'.

&nbsp;

&nbsp;


## 2. Choose the first available value

```sql
SELECT COALESCE(home_phone, work_phone, mobile_phone) AS contact_number
FROM employees;
```

If `home_phone` is **NULL**, it checks `work_phone`; if that's also **NULL**, it returns `mobile_phone`.

&nbsp;

&nbsp;

# 3. Handle NULL in calculations

```sql
SELECT product_name,
       price * COALESCE(discount, 0) AS discount_amount
FROM products;
```

If `discount` is **NULL**, it uses `0`.

&nbsp;

&nbsp;

## 4. Multiple columns
```sql
SELECT COALESCE(city, state, country, 'Unknown') AS location
FROM addresses;
```

&nbsp;

&nbsp;

# Difference between COALESCE and ISNULL (SQL Server)

| `COALESCE`                   | `ISNULL`                                        |
| ---------------------------- | ----------------------------------------------- |
| Standard SQL                 | SQL Server-specific                             |
| Accepts multiple arguments   | Accepts only two arguments                      |
| Returns first non-NULL value | Returns replacement if first expression is NULL |
| Better for portability       | Slightly simpler for two values                 |


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
