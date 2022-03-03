SELECT FORMAT(MAX(lat_n) ,'.####')
FROM station
WHERE lat_n < 137.2345;