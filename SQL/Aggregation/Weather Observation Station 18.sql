SELECT FORMAT(MAX(lat_n)-MIN(lat_n) + MAX(long_w)-MIN(long_w), '.####') 
FROM station;