# Content

- [Content](#content)
- [12-07-2026](#12-07-2026)
- [15-07-2026](#15-07-2026)
- [Interview Challenge](#interview-challenge)
  - [Challenge](#challenge)
- [Common Interview Mistakes](#common-interview-mistakes)
  - [Mistake 1](#mistake-1)
  - [Mistake 2](#mistake-2)
  - [Mistake 3](#mistake-3)

&nbsp;

&nbsp;

&nbsp;

# 12-07-2026

1.  Explain the differences between SCD Type 1 and Type 2.
2.  When would you choose a Star Schema over a Snowflake Schema?

&nbsp;

&nbsp;

# 15-07-2026

1. What is a factless fact table? Give a practical example.
2. Why should surrogate keys be used in dimension tables instead of business keys?
   &nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview Challenge

## Challenge

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

# Common Interview Mistakes

### Mistake 1

Always choosing SCD Type 2.

Correct

Use SCD Type 2 only when historical tracking is required. If business logic only needs the latest value, Type 1 is simpler and more efficient.

&nbsp;

&nbsp;

### Mistake 2

"Fact tables always contain numeric measures."

Correction

Factless fact tables record events or relationships without numeric measures.

&nbsp;

&nbsp;

### Mistake 3

"Business keys are always better because they already exist."

Correction

Business keys are useful for identifying source records, but surrogate keys are generally preferred in dimensional models because they remain stable and support historical tracking.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
