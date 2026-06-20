# Content

- [Content](#content)
- [Dimension Tables](#dimension-tables)
- [Examples](#examples)
- [Characteristics](#characteristics)

&nbsp;

&nbsp;

&nbsp;

# Dimension Tables

A Dimension Table stores descriptive information that provides context to facts.

&nbsp;

It answers:

- Who?
- What?
- When?
- Where?

&nbsp;

&nbsp;

# Examples

DIM_PRODUCT

| Product_ID | Product_Name | Category    |
| ---------- | ------------ | ----------- |
| P101       | Laptop       | Electronics |
| P102       | Mobile       | Electronics |

&nbsp;

DIM_CUSTOMER

| Customer_ID | Customer_Name | City   |
| ----------- | ------------- | ------ |
| C201        | Rahul         | Delhi  |
| C202        | Priya         | Mumbai |

&nbsp;

DIM_DATE

| Date_ID | Date        | Month | Year |
| ------- | ----------- | ----- | ---- |
| D301    | 01-Jan-2025 | Jan   | 2025 |

&nbsp;

&nbsp;

# Characteristics

- Contains descriptive text
- Smaller than fact tables
- Used for filtering and grouping
- Changes less frequently

&nbsp;

&nbsp;
