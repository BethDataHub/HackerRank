WITH median AS
(
    SELECT lat_n,
        ROW_NUMBER() OVER (ORDER BY lat_n ASC) rownum
    FROM station
)

SELECT FORMAT(lat_n,'.####') 
FROM median
WHERE rownum = (SELECT CEILING(CAST(COUNT(*) AS FLOAT)/2) FROM station);