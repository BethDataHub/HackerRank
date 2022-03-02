WITH CTE_n AS 
(
    SELECT 1 n
    UNION ALL
    SELECT n + 1
    FROM CTE_n
    WHERE n < 20
)
SELECT REPLICATE('* ', n)
FROM CTE_n;