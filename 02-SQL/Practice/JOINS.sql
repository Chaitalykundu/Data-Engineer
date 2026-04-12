CREATE DATABASE SQL;

CREATE SCHEMA SQL.JOINS;

USE SCHEMA SQL.JOINS;

-- Question 1
-- How much amount was paid by the customer 'Madan'? What was the mode and payment date?
-- Tables: customer, payment, address, country
-- Columns of Customer : customer_id, first_name, last_name, address_id
-- Columns of payment : customer_id, amount, mode, payment_date
-- Columns of address : address_id, address, city_id, postal_code, phone
-- Columns of country : city_id, city, country
CREATE TABLE
    CUSTOMER (
        customer_id int,
        first_name varchar(50),
        last_name varchar(50),
        address_id int
    );

SELECT
    *
FROM
    CUSTOMER;