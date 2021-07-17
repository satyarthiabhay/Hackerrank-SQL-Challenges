-- Problem : https://www.hackerrank.com/challenges/occupations/problem


SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor)
FROM
(SELECT  RANK() OVER(PARTITION BY occupation ORDER BY name) rank,
    case OCCUPATION when 'Doctor' then NAME end AS Doctor,
    case OCCUPATION when 'Professor' then NAME end AS Professor,
    case OCCUPATION when 'Singer' then NAME end AS Singer,
    case OCCUPATION when 'Actor' then NAME end AS Actor
FROM occupations)
GROUP BY rank
ORDER BY rank;