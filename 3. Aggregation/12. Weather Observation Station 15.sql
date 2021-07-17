--Problem: https://www.hackerrank.com/challenges/weather-observation-station-15/problem

SELECT ROUND(LONG_W, 4) 
FROM ( SELECT LONG_W 
        FROM STATION 
        WHERE LAT_N < 137.2345 
        ORDER BY LAT_N DESC)
WHERE ROWNUM = 1;