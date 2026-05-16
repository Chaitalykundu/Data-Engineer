# Query execution order

Even though you write SQL like this:

```sql
SELECT column1, column2
FROM table
WHERE condition
GROUP BY column1
HAVING condition
ORDER BY column1;
```

👉 SQL does NOT execute in this order

&nbsp;

&nbsp;

# Actual Execution Order

Funny Jolly Wolves Grow Hair Slowly During Old Lunch

1. FROM
2. JOIN
3. WHERE
4. GROUP BY
5. HAVING
6. SELECT
7. DISTINCT
8. ORDER BY
9. LIMIT / OFFSET

&nbsp;

&nbsp;

# Step-by-Step Explanation

## 1. FROM

Identify the table

```sql
FROM customers
```

&nbsp;

&nbsp;

## 2. JOIN

Combine tables

```sql
JOIN orders ON customers.id = orders.customer_id
```

&nbsp;

&nbsp;

## 3. WHERE

Filter rows before grouping

```sql
WHERE country = 'India'
```

&nbsp;

&nbsp;

## 4. GROUP BY

Create groups

```sql
GROUP BY customer_id
```

&nbsp;

&nbsp;

## 5. HAVING

Filter after grouping

```sql
HAVING COUNT(*) > 5
```

&nbsp;

&nbsp;

## 6. SELECT

Choose columns / compute expressions

```sql
SELECT customer_id, COUNT(*) AS total_orders
```

&nbsp;

&nbsp;

## 7. DISTINCT

Remove duplicates

&nbsp;

&nbsp;

## 8. ORDER BY

Sort result

```sql
ORDER BY total_orders DESC
```

&nbsp;

&nbsp;

## 9. LIMIT

Restrict output

```sql
LIMIT 10
```

&nbsp;

&nbsp;

# Visual Flow (Easy to Remember)

```md
FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
