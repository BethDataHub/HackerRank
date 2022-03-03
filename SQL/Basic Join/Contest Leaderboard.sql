WITH max_score AS
(
    SELECT hacker_id,  
        MAX(score) score 
    FROM submissions 
    GROUP BY challenge_id, hacker_id
)

SELECT hackers.hacker_id, name, SUM(score) as total_score
FROM hackers
JOIN max_score ON hackers.hacker_id = max_score.hacker_id
GROUP BY hackers.hacker_id, name
HAVING SUM(score) > 0
ORDER BY 3 DESC, hackers.hacker_id;