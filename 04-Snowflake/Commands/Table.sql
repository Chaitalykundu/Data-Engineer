-- create table in Snowflake
create
or replace TABLE DEMO.DEMO_SCHEMA.DEMO_TABLE (
    NAME VARCHAR(16777216),
    ROLL_NO NUMBER (38, 0),
    HOMETOWN VARCHAR(16777216),
    STATUS VARCHAR(16777216)
);

-- insert data into the table
INSERT INTO
    DEMO.DEMO_SCHEMA.DEMO_TABLE (NAME, ROLL_NO, HOMETOWN, STATUS)
VALUES
    ('Amiit Seen', 1000, 'Delhi', 'Active');

-- select data from the table
SELECT
    *
FROM
    DEMO.DEMO_SCHEMA.DEMO_TABLE;

-- delete duplicate rows from the table
DELETE FROM DEMO.DEMO_SCHEMA.DEMO_TABLE
WHERE
    (NAME, ROLL_NO, HOMETOWN, STATUS) IN (
        SELECT
            NAME,
            ROLL_NO,
            HOMETOWN,
            STATUS
        FROM
            (
                SELECT
                    *,
                    ROW_NUMBER() OVER (
                        PARTITION BY
                            NAME,
                            ROLL_NO,
                            HOMETOWN,
                            STATUS
                        ORDER BY
                            CURRENT_DATE
                    ) AS row_num
                FROM
                    DEMO.DEMO_SCHEMA.DEMO_TABLE
            )
        WHERE
            row_num > 1
    );

-- Drop the table
DROP TABLE DEMO.DEMO_SCHEMA.Stream_Source_TABLE;