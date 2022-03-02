SELECT wands.id, 
    wands_property.age, 
    wands.coins_needed, 
    wands.power 
FROM wands
JOIN wands_property ON wands_property.code = wands.code
WHERE is_evil = 0 
AND coins_needed = (SELECT MIN(coins_needed) FROM wands w1 JOIN wands_property p1 ON w1.code      = wands_property.code WHERE w1.power = wands.power and p1.age = wands_property.age) 
ORDER BY wands.power DESC, wands_property.age DESC;