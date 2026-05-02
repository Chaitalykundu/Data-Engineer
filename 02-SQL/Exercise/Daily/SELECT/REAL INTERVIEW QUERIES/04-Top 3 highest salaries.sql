SELECT
    *
FROM
    Employee
where
    Monthly_sal is not null
ORDER BY
    Monthly_sal DESC
LIMIT
    3;