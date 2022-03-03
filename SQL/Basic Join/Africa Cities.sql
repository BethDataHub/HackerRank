SELECT city.name
FROM city
JOIN country ON country.code = city.countrycode
WHERE continent = 'Africa';