SELECT * FROM customer;

-- Start with 
SELECT * FROM customer where first_name like 'A%';

-- Ends with 
SELECT * FROM customer where first_name like '%A';

-- Contains
SELECT * FROM customer where first_name like '%AN%';

-- One Character Wildcard
SELECT * FROM customer where first_name like 'A___E';

 -- NOT LIKE
SELECT * FROM customer where first_name NOT LIKE '%AN%';