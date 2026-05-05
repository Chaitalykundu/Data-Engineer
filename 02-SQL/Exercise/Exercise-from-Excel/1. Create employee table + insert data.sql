CREATE TABLE
    Employee (
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        age INT,
        Monthly_sal DECIMAL(10, 2)
    );

INSERT INTO
    Employee (first_name, last_name, age, Monthly_sal)
VALUES
    ('Rahul', 'Sharma', 25, 40000),
    ('Priya', NULL, 29, 55000),
    ('Amit', 'Das', NULL, 62000),
    (NULL, 'Roy', 31, 48000),
    ('Sneha', 'Paul', 27, NULL),
    ('Karan', 'Mehta', 34, 75000);