WITH leaderboard
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
FROM leaderboard
WHERE counter=(SELECT MAX(counter) FROM leaderboard) 
OR counter IN (SELECT counter FROM leaderboard GROUP BY counter HAVING count(counter)=1)
ORDER BY counter desc, hacker_id;