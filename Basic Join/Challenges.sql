WITH data
AS
(
    SELECT challenges.hacker_id, 
        hackers.name, 
        COUNT(hackers.hacker_id) counter
    FROM hackers 
    JOIN challenges on challenges.hacker_id = hackers.hacker_id
    GROUP BY challenges.hacker_id, name
)

SELECT hacker_id,
    name,
    counter
FROM data
WHERE counter=(SELECT max(counter) FROM data) 
OR counter in (SELECT counter FROM data GROUP BY counter HAVING count(counter)=1)
ORDER BY counter desc, hacker_id;