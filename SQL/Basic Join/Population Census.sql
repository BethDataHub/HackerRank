SELECT SUM(city.population)
FROM City
JOIN Country ON Country.code = City.Countrycode
WHERE continent = 'Asia';