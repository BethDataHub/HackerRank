WITH CTE_n AS 
(
    SELECT 20 n
    UNION ALL
    SELECT n - 1
    FROM CTE_n
    WHERE n > 0
)
SELECT REPLICATE('* ', n)
FROM CTE_n;