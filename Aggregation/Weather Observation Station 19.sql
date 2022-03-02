SELECT FORMAT(SQRT(POWER((MIN(lat_n)-MAX(lat_n)),2) + POWER((MIN(long_w)-MAX(long_w)),2)),'.####') 
FROM station;