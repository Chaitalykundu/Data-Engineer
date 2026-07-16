# Overview

- [Overview](#overview)
- [SUM](#sum)
- [Example](#example)
  - [Example 1 — Total salary expense](#example-1--total-salary-expense)
  - [Example 2 — SUM with WHERE](#example-2--sum-with-where)
- [Real-Life Usage](#real-life-usage)
- [QnA](#qna)
  - [Interview Questions](#interview-questions)
  - [Answer](#answer)
    - [2. What is the difference between SUM(\*) and SUM(column)?](#2-what-is-the-difference-between-sum-and-sumcolumn)
    - [4. Why does `COUNT(*)` work but `SUM(*)` doesn't?](#4-why-does-count-work-but-sum-doesnt)

&nbsp;

&nbsp;

&nbsp;

# SUM

Adds numeric values and returns total.

&nbsp;

&nbsp;

# Example

## Example 1 — Total salary expense

```sql
SELECT SUM(salary)
FROM Employees;
```

NULL is ignored.

&nbsp;

&nbsp;

## Example 2 — SUM with WHERE

```sql
SELECT SUM(salary)
FROM employee
WHERE department='IT';
```

&nbsp;

&nbsp;

# Real-Life Usage

Used in:

- revenue
- expenses
- payroll
- sales amount

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# QnA

## Interview Questions

1. What does `SUM` do?
2. What is the difference between SUM(\*) and SUM(column)?
3. What is the difference between COUNT(DISTINCT column) and COUNT(column)?
4. Why does `COUNT(*)` work but `SUM(*)` doesn't?
5. What is the real life usage of `SUM`
6. Can `SUM()` be used on VARCHAR columns?

&nbsp;

&nbsp;

&nbsp;

## Answer

### 2. What is the difference between SUM(\*) and SUM(column)?

There is no `SUM(*)` function in SQL. It is invalid syntax.

`SUM(*)` This will result in an error because `SUM()` requires a numeric expression or column, not `*`.

&nbsp;

### 4. Why does `COUNT(*)` work but `SUM(*)` doesn't?

`COUNT(*)`is a special case in SQL. `COUNT(*)` means count every row, regardless of column values.
`SUM()` needs actual numeric values to add together. The `*` symbol doesn't represent a numeric value—it represents "all columns," which cannot be summed.
