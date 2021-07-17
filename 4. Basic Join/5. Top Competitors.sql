--Problem: https://www.hackerrank.com/challenges/full-score/problem

SELECT h.hacker_id, h.name FROM Hackers h 
--join submission table
join Submissions s ON h.hacker_id=s.hacker_id
--join diffculty table
join Difficulty  d ON s.score = d.score
--join challenge table
join Challenges  c ON 
                    s.challenge_id = c.challenge_id AND 
                    d.difficulty_level = c.difficulty_level
GROUP BY h.hacker_id, h.name HAVING COUNT(s.submission_id) > 1
ORDER BY COUNT(s.submission_id) DESC, hacker_id ASC;