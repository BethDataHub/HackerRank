SELECT FORMAT(long_w,'.####')
FROM station
WHERE lat_n = (SELECT MAX(lat_n) FROM station WHERE lat_n < 137.2345);