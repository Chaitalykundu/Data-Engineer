# Content

- [Content](#content)
- [Summary](#summary)
- [Fact Tables](#fact-tables)
- [Examples of Facts](#examples-of-facts)
- [Example Fact Table: Sales_Fact](#example-fact-table-sales_fact)
- [Characteristics](#characteristics)

&nbsp;

&nbsp;

&nbsp;

# Summary

Think of it like this:

- Fact = measurable event
- Dimension = descriptive context

&nbsp;

&nbsp;

# Fact Tables

A Fact Table stores numeric values / measurable business data (metrics) and foreign keys that connect to dimension tables.

&nbsp;

It answers:

- How much?
- How many?
- How often?

&nbsp;

&nbsp;

# Examples of Facts

- Sales Amount
- Quantity Sold
- Revenue
- Profit
- Number of Orders
- Cost

&nbsp;

&nbsp;

# Example Fact Table: Sales_Fact

| Order_ID | Product_ID | Customer_ID | Date_ID | Quantity | Sales_Amount |
| -------- | ---------- | ----------- | ------- | -------- | ------------ |
| 1001     | P101       | C201        | D301    | 2        | 500          |
| 1002     | P102       | C202        | D302    | 1        | 300          |

&nbsp;

Columns:

- Order_ID → foreign key
- Product_ID → foreign key
- Customer_ID → foreign key
- Date_ID → foreign key
- Quantity, Sales_Amount → measures

&nbsp;

&nbsp;

# Characteristics

- Contains numeric measures.
- Very large table.
- Changes frequently
- Connected to dimensions through foreign keys.

&nbsp;

&nbsp;

&nbsp;
